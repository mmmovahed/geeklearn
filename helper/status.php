<?php
/*
 * Here is defining status codes and hint codes
 *
 */
class status extends Base
{
    public function user_status($status)
    {
        if ($status == 0)
            return "غیرفعال";
        elseif ($status == 1)
            return "احراز هویت نشده";
        elseif ($status == 2)
            return "کاربر";
        elseif ($status == 3)
            return "نویسنده";
        elseif ($status == 4)
            return "استاد";
        elseif ($status == 5)
            return "کارشناس";
        elseif ($status == 5)
            return "مدیر";
    }

    public function course_Status($status)
    {
        if ($status == 0)
            return "به زودی";
        elseif ($status == 1)
            return "در حال برگذاری";
        elseif ($status == 2)
            return "تکمیل شده";
        elseif ($status == 3)
            return "پیش فروش";
        elseif ($status == 4)
            return "لغو شده";
        elseif ($status == 5)
            return "حذف شده(عدم کیفیت)";
    }
}