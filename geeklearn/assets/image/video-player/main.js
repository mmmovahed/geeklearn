const playPauseBtn = document.querySelector(".play-pause-btn");
const video = document.querySelector("video");
const videoContainer = document.querySelector(".video-container");
const fullScreenBtn = document.querySelector(".full-screen-btn");
const theaterBtn = document.querySelector(".theater-btn");
const miniPlayerBtn = document.querySelector(".mini-player-btn");
const muteBtn = document.querySelector(".mute-btn");
const volumeSlider = document.querySelector(".volume-slider");
const totalTimeElem = document.querySelector(".total-time");
const currentTimeElem = document.querySelector(".current-time");
const speedBtn = document.querySelector(".speed-btn");
const timelineContainer = document.querySelector(".timeline-container");
document.addEventListener("keydown", (e) => {
  if (e.keyCode == 32 && e.target == document.body) {
    e.preventDefault();
  }
  const tagName = document.activeElement.tagName.toLocaleLowerCase();
  if (tagName === "input") return;
  switch (e.key.toLowerCase()) {
    case " ":
      if (tagName === "button") return;
    case "k":
      togglePlay();
      break;
    case "f":
      toggleFullScreenMode();
      break;
    case "t":
      toggleTheaterMode();
      break;
    case "i":
      toggleMiniPlayerMode();
      break;
    case "m":
      toggleMute();
    case "arrowleft":
    case "j":
      skip(-5);
      break;
    case "arrowright":
    case "l":
      skip(5);
      break;
  }
});

// Timeline

timelineContainer.addEventListener("mousemove", handleTimelineUpdate);
timelineContainer.addEventListener("mousedown", toggleScrubbing);
document.addEventListener("mouseup", (e) => {
  if (isScrubbing) toggleScrubbing(e);
});
document.addEventListener("mousemove", (e) => {
  if (isScrubbing) handleTimelineUpdate(e);
});

let isScrubbing = false;
let wasPaused;
function toggleScrubbing(e) {
  const rect = timelineContainer.getBoundingClientRect();
  const percent = Math.min(Math.max(0, e.x - rect.x), rect.width) / rect.width;
  isScrubbing = (e.buttons & 1) === 1;
  videoContainer.classList.toggle("scrubbing", isScrubbing);
  if (isScrubbing) {
    wasPaused = video.paused;
    video.pause();
  } else {
    video.currentTime = percent * video.duration;
    if (!wasPaused) video.play();
  }

  handleTimelineUpdate(e);
}

function handleTimelineUpdate(e) {
  const rect = timelineContainer.getBoundingClientRect();
  const percent = Math.min(Math.max(0, e.x - rect.x), rect.width) / rect.width;

  timelineContainer.style.setProperty("--preview-position", percent);

  if (isScrubbing) {
    e.preventDefault();

    timelineContainer.style.setProperty("--progress-position", percent);
  }
}
// Playback Speed

speedBtn.addEventListener("click", () => {
  let newPlaybackRate = video.playbackRate + 0.5;
  if (newPlaybackRate > 2) newPlaybackRate = 0.5;
  video.playbackRate = newPlaybackRate;
  speedBtn.textContent = `${newPlaybackRate}x`;
});

// Volume

muteBtn.addEventListener("click", toggleMute);
volumeSlider.addEventListener("input", (e) => {
  video.volume = e.target.value;
  video.muted = e.target.value === 0;
});

function toggleMute() {
  video.muted = !video.muted;
}

video.addEventListener("volumechange", () => {
  volumeSlider.value = video.volume;
  let volumeLevel;
  if (video.muted || video.volume === 0) {
    volumeSlider.value = 0;
    volumeLevel = "muted";
  } else if (video.volume >= 0.5) {
    volumeLevel = "high";
  } else {
    volumeLevel = "low";
  }

  videoContainer.dataset.volumeLevel = volumeLevel;
});

//Duratin

video.addEventListener("loadeddata", () => {
  totalTimeElem.textContent = formatDuration(video.duration);
});

video.addEventListener("timeupdate", () => {
  currentTimeElem.textContent = formatDuration(video.currentTime);
  const percent = video.currentTime / video.duration;
  timelineContainer.style.setProperty("--progress-position", percent);
});
const leadingZeroFormatter = new Intl.NumberFormat(undefined, {
  minimumIntegerDigits: 2,
});

function formatDuration(time) {
  const seconds = Math.floor(time % 60);
  const minutes = Math.floor(time / 60);
  const hours = Math.floor(time / 3600);
  if (hours === 0) {
    return `${minutes}: ${leadingZeroFormatter.format(seconds)}`;
  } else {
    return `${hours}: ${leadingZeroFormatter.format(minutes)}:
            ${leadingZeroFormatter.format(seconds)}`;
  }
}

function skip(duratin) {
  video.currentTime += duratin;
}

// View Modes
fullScreenBtn.addEventListener("click", toggleFullScreenMode);
theaterBtn.addEventListener("click", toggleTheaterMode);
miniPlayerBtn.addEventListener("click", toggleMiniPlayerMode);

function toggleTheaterMode() {
  videoContainer.classList.toggle("theater");
}

function toggleFullScreenMode() {
  if (document.fullscreenElement == null) {
    videoContainer.requestFullscreen();
  } else {
    document.exitFullscreen();
  }
}

function toggleMiniPlayerMode() {
  if (videoContainer.classList.contains("mini-player")) {
    document.exitPictureInPicture();
  } else {
    video.requestPictureInPicture();
    console.log(video.requestPictureInPicture());
  }
}

document.addEventListener("fullscreenchange", () => {
  videoContainer.classList.toggle("full-screen", document.fullscreenElement);
});
video.addEventListener("enterpictureinpicture", () => {
  videoContainer.classList.add("mini-player");
});
video.addEventListener("leavepictureinpicture", () => {
  videoContainer.classList.remove("mini-player");
});

// play/pause

video.addEventListener("click", togglePlay);
playPauseBtn.addEventListener("click", togglePlay);
video.addEventListener("play", () => {
  videoContainer.classList.remove("paused");
});

video.addEventListener("pause", () => {
  videoContainer.classList.add("paused");
});

function togglePlay() {
  video.paused ? video.play() : video.pause();
}
