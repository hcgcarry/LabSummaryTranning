def check_hrs():
    valid_hours = 30*24
    power_on_hours = 2433
    smart_device = "/dev/sdb2"
    if get_hrs(smart_device) > ( power_on_hours + valid_hours
            ):
        return False
    else:
        return True


