let template = document.createElement("template");
template.innerHTML = `
<link rel="stylesheet" href="../components/Course/Course-video/course-video.css">
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css">
<div class="container">
  <div class="header">
    <div class="right">
     <svg width="35px" height="35px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M11.9426 1.25H12.0574C14.3658 1.24999 16.1748 1.24998 17.5863 1.43975C19.031 1.63399 20.1711 2.03933 21.0659 2.93414C21.9607 3.82895 22.366 4.96897 22.5603 6.41371C22.75 7.82519 22.75 9.63423 22.75 11.9426V12.0574C22.75 14.3658 22.75 16.1748 22.5603 17.5863C22.366 19.031 21.9607 20.1711 21.0659 21.0659C20.1711 21.9607 19.031 22.366 17.5863 22.5603C16.1748 22.75 14.3658 22.75 12.0574 22.75H11.9426C9.63423 22.75 7.82519 22.75 6.41371 22.5603C4.96897 22.366 3.82895 21.9607 2.93414 21.0659C2.03933 20.1711 1.63399 19.031 1.43975 17.5863C1.24998 16.1748 1.24999 14.3658 1.25 12.0574V11.9426C1.24999 9.63423 1.24998 7.82519 1.43975 6.41371C1.63399 4.96897 2.03933 3.82895 2.93414 2.93414C3.82895 2.03933 4.96897 1.63399 6.41371 1.43975C7.82519 1.24998 9.63423 1.24999 11.9426 1.25ZM6.25 2.98181C5.18517 3.16506 4.5083 3.4813 3.9948 3.9948C3.4813 4.50829 3.16506 5.18517 2.98181 6.25H6.25V2.98181ZM7.75 2.81997V6.25H11.25V2.75028C9.8547 2.75175 8.70923 2.76108 7.75 2.81997ZM12.75 2.75028V6.25H16.25V2.81997C15.2908 2.76108 14.1453 2.75175 12.75 2.75028ZM17.75 2.98181V6.25H21.0182C20.8349 5.18517 20.5187 4.5083 20.0052 3.9948C19.4917 3.4813 18.8148 3.16506 17.75 2.98181ZM21.18 7.75H17.0006C17.0004 7.75 17.0008 7.75 17.0006 7.75C17.0004 7.75 16.9996 7.75 16.9994 7.75L12.0009 7.75C12.0006 7.75 12.0011 7.75 12.0009 7.75C12.0006 7.75 11.9994 7.75 11.9991 7.75L7.00106 7.75C7.00071 7.75 7.00035 7.75 7 7.75C6.99965 7.75 6.9993 7.75 6.99894 7.75H2.81997C2.75085 8.87584 2.75 10.2582 2.75 12C2.75 13.7418 2.75085 15.1242 2.81997 16.25L21.18 16.25C21.2491 15.1242 21.25 13.7418 21.25 12C21.25 10.2582 21.2491 8.87584 21.18 7.75ZM21.0182 17.75H17.75V21.0182C18.8148 20.8349 19.4917 20.5187 20.0052 20.0052C20.5187 19.4917 20.8349 18.8148 21.0182 17.75ZM16.25 21.18V17.75H12.75V21.2497C14.1453 21.2483 15.2908 21.2389 16.25 21.18ZM11.25 21.2497V17.75H7.75L7.75 21.18C8.70923 21.2389 9.8547 21.2483 11.25 21.2497ZM6.25 21.0182L6.25 17.75H2.98181C3.16506 18.8148 3.4813 19.4917 3.9948 20.0052C4.50829 20.5187 5.18517 20.8349 6.25 21.0182ZM12.7793 9.74813C12.796 9.75934 12.8127 9.77059 12.8295 9.78187C12.845 9.79229 12.8605 9.80266 12.8759 9.81301C13.3656 10.1421 13.8034 10.4362 14.111 10.7196C14.445 11.0273 14.75 11.4337 14.75 12C14.75 12.5663 14.445 12.9727 14.111 13.2804C13.8034 13.5638 13.3656 13.8579 12.8759 14.187L12.8295 14.2181C12.8128 14.2294 12.796 14.2407 12.7794 14.2519C12.2858 14.5836 11.8415 14.8824 11.4681 15.0551C11.0758 15.2365 10.5194 15.3914 9.98642 15.0386C9.49674 14.7146 9.36158 14.1731 9.3061 13.7395C9.24993 13.3004 9.24996 12.7235 9.25 12.0514V11.9486C9.24996 11.2765 9.24993 10.6996 9.3061 10.2605C9.36158 9.82686 9.49674 9.28543 9.98642 8.96138C10.5194 8.60864 11.0758 8.76347 11.4681 8.94491C11.8414 9.1176 12.2858 9.41635 12.7793 9.74813ZM10.8193 10.2977C10.8255 10.3004 10.8318 10.3033 10.8384 10.3063C11.0893 10.4224 11.4327 10.6504 11.9928 11.0268C12.5436 11.397 12.8823 11.6272 13.0946 11.8228C13.1937 11.9141 13.232 11.9688 13.2457 11.9934C13.2472 11.9961 13.2483 11.9983 13.2491 12C13.2483 12.0017 13.2472 12.0039 13.2457 12.0066C13.232 12.0312 13.1937 12.0859 13.0946 12.1772C12.8823 12.3728 12.5436 12.603 11.9928 12.9732C11.4327 13.3496 11.0893 13.5776 10.8384 13.6937C10.8318 13.6967 10.8255 13.6996 10.8193 13.7023C10.8109 13.663 10.8021 13.6127 10.794 13.5491C10.7515 13.2171 10.75 12.738 10.75 12C10.75 11.262 10.7515 10.7829 10.794 10.4509C10.8021 10.3873 10.8109 10.337 10.8193 10.2977Z" fill="#b3b6c1"></path> </g></svg>     
     <span>فهرست ویدیوها</span>
    </div>
    <div class="left">
     <span>مدت زمان دوره</span>
     <span class="course-duration">12:20</span> 
    </div>
  </div>
  <div class="video-player-contaienr">
    <div class="video-container paused" data-volume-level="high">

      <div class="video-controls-container">
        <div class="timeline-container">
          <div class="timeline">
            <img class="preview-img">
            <div class="thumb-indicator"></div>
          </div>
        </div>
        <div class="controls">
          <button class="play-pause-btn">
            <svg class="play-icon" viewBox="0 0 24 24">
              <path fill="currentColor" d="M8,5.14V19.14L19,12.14L8,5.14Z" />
            </svg>
            <svg class="pause-icon" viewBox="0 0 24 24">
              <path fill="currentColor" d="M14,19H18V5H14M6,19H10V5H6V19Z" />
            </svg>
          </button>
          <div class="volume-container">
            <button class="mute-btn">
              <svg class="volume-high-icon" viewBox="0 0 24 24">
                <path fill="currentColor" d="M14,3.23V5.29C16.89,6.15 19,8.83 19,12C19,15.17 16.89,17.84 14,18.7V20.77C18,19.86 21,16.28 21,12C21,7.72 18,4.14 14,3.23M16.5,12C16.5,10.23 15.5,8.71 14,7.97V16C15.5,15.29 16.5,13.76 16.5,12M3,9V15H7L12,20V4L7,9H3Z" />
              </svg>
              <svg class="volume-low-icon" viewBox="0 0 24 24">
                <path fill="currentColor" d="M5,9V15H9L14,20V4L9,9M18.5,12C18.5,10.23 17.5,8.71 16,7.97V16C17.5,15.29 18.5,13.76 18.5,12Z" />
              </svg>
              <svg class="volume-muted-icon" viewBox="0 0 24 24">
                <path fill="currentColor" d="M12,4L9.91,6.09L12,8.18M4.27,3L3,4.27L7.73,9H3V15H7L12,20V13.27L16.25,17.53C15.58,18.04 14.83,18.46 14,18.7V20.77C15.38,20.45 16.63,19.82 17.68,18.96L19.73,21L21,19.73L12,10.73M19,12C19,12.94 18.8,13.82 18.46,14.64L19.97,16.15C20.62,14.91 21,13.5 21,12C21,7.72 18,4.14 14,3.23V5.29C16.89,6.15 19,8.83 19,12M16.5,12C16.5,10.23 15.5,8.71 14,7.97V10.18L16.45,12.63C16.5,12.43 16.5,12.21 16.5,12Z" />
              </svg>
            </button>
            <input class="volume-slider" type="range" min="0" max="1" step="any" value="1">
          </div>
          <div class="duration-container">
            <div class="current-time">0:00</div>
            /
            <div class="total-time">10:00</div>
          </div>

          <button class="speed-btn wide-btn">
            1x
          </button>
          <button class="full-screen-btn"> <svg class="open" viewBox="0 0 24 24">
              <path fill="currentColor" d="M7 14H5v5h5v-2H7v-3zm-2-4h2V7h3V5H5v5zm12 7h-3v2h5v-5h-2v3zM14 5v2h3v3h2V5h-5z" />
            </svg>
            <svg class="close" viewBox="0 0 24 24">
              <path fill="currentColor" d="M5 16h3v3h2v-5H5v2zm3-8H5v2h5V5H8v3zm6 11h2v-3h3v-2h-5v5zm2-11V5h-2v5h5V8h-3z" />
            </svg></button>
          <button class="theater-btn"> <svg class="tall" viewBox="0 0 24 24">
              <path fill="currentColor" d="M19 6H5c-1.1 0-2 .9-2 2v8c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V8c0-1.1-.9-2-2-2zm0 10H5V8h14v8z" />
            </svg>
            <svg class="wide" viewBox="0 0 24 24">
              <path fill="currentColor" d="M19 7H5c-1.1 0-2 .9-2 2v6c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V9c0-1.1-.9-2-2-2zm0 8H5V9h14v6z" />
            </svg>
          </button>
          <button class="mini-player-btn"><svg viewBox="0 0 24 24">
              <path fill="currentColor" d="M21 3H3c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h18c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm0 16H3V5h18v14zm-10-7h9v6h-9z" />
            </svg></button>

        </div>
      </div>
      <video id="intro">
        <source type="video/mp4" src="../components/Course/Course-video/ab.mp4">
        </source>
      </video>
    </div>
  </div>
  <div class="video-list-container">
   <ul>
   <li><span class="count">1</span><span class="title">معرفی دوره</span> <span class="duration">04:10</span></li>
   <li><span class="count">1</span><span class="title">معرفی دوره</span> <span class="duration">04:10</span></li>
   </ul>
  </div>
</div>
`;

class CourseVideo extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    const playPauseBtn = this.shadowRoot.querySelector(".play-pause-btn");
    const video = this.shadowRoot.querySelector("video");
    const videoContainer = this.shadowRoot.querySelector(".video-container");
    const fullScreenBtn = this.shadowRoot.querySelector(".full-screen-btn");
    const theaterBtn = this.shadowRoot.querySelector(".theater-btn");
    const miniPlayerBtn = this.shadowRoot.querySelector(".mini-player-btn");
    const muteBtn = this.shadowRoot.querySelector(".mute-btn");
    const volumeSlider = this.shadowRoot.querySelector(".volume-slider");
    const totalTimeElem = this.shadowRoot.querySelector(".total-time");
    const currentTimeElem = this.shadowRoot.querySelector(".current-time");
    const speedBtn = this.shadowRoot.querySelector(".speed-btn");
    const timelineContainer = this.shadowRoot.querySelector(".timeline-container");
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
      const percent =
        Math.min(Math.max(0, e.x - rect.x), rect.width) / rect.width;
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
      const percent =
        Math.min(Math.max(0, e.x - rect.x), rect.width) / rect.width;

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
      videoContainer.classList.toggle(
        "full-screen",
        document.fullscreenElement
      );
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
  }
}

export { CourseVideo };
