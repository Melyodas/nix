{ config, lib, pkgs, ... }:

{
  services.polybar = {
    enable = true;
    package = pkgs.polybar.override { i3GapsSupport = true; };
    script = "polybar top -l info 2> polybar.log & polybar bottom &";
    config = {
      # ┌────────────────────────────────────────────────────────────┐
      # │░█▀█░█▀█░█░░░█░█░█▀▄░█▀█░█▀▄░░░░░░░░░█▀▀░█▀█░█░░░█▀█░█▀▄░█▀▀│
      # │░█▀▀░█░█░█░░░░█░░█▀▄░█▀█░█▀▄░░░░▀░░░░█░░░█░█░█░░░█░█░█▀▄░▀▀█│
      # │░▀░░░▀▀▀░▀▀▀░░▀░░▀▀░░▀░▀░▀░▀░░░░▀░░░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀▀▀│
      # │░Created░By░Aditya░Shakya░@adi1090x░░░░░░░░░░░░░░░░░░░░░░░░░│
      # └────────────────────────────────────────────────────────────┘

      "color" = {
        # main colors
        background = "#000000";
        # bit transparent -> #8C1C1F1C
        background-alt = "#4C1c1f1c";
        foreground = "#e1eaed";
        foreground-alt = "#33e1eaed";
        primary = "#C9A571";
        red = "#FF5250";
        green = "#43a047";
        yellow = "#fdd835";

      };
      # ┌────────────────────────────────────────────────────────────┐
      # │░█▀█░█▀█░█░░░█░█░█▀▄░█▀█░█▀▄░░░░░░░░░█▀▀░█▀█░█▀█░█▀▀░▀█▀░█▀▀│
      # │░█▀▀░█░█░█░░░░█░░█▀▄░█▀█░█▀▄░░░░▀░░░░█░░░█░█░█░█░█▀▀░░█░░█░█│
      # │░▀░░░▀▀▀░▀▀▀░░▀░░▀▀░░▀░▀░▀░▀░░░░▀░░░░▀▀▀░▀▀▀░▀░▀░▀░░░▀▀▀░▀▀▀│
      # │░Created░By░Aditya░Shakya░@adi1090x░░░░░░░░░░░░░░░░░░░░░░░░░│
      # └────────────────────────────────────────────────────────────┘


      # Global WM Settings

      "global/wm" = {
        # Adjust the _NET_WM_STRUT_PARTIAL top value
        # Used for top aligned bars
        margin-bottom = 0;

        # Adjust the _NET_WM_STRUT_PARTIAL bottom value
        # Used for bottom aligned bars
        margin-top = 0;

      };

      # Bar Settings

      "bar/main" = {
        # Use either of the following command to list available outputs:
        # If unspecified, the application will pick the first one it finds.
        # \$ polybar -m | cut -d ':' -f 1
        # \$ xrandr -q | grep " connected" | cut -d ' ' -f1
        monitor = "";

        # Use the specified monitor as a fallback if the main one is not found.
        monitor-fallback = "";

        # Require the monitor to be in connected state
        # XRandR sometimes reports my monitor as being disconnected (when in use)
        monitor-strict = "false";

        # Tell the Window Manager not to configure the window.
        # Use this to detach the bar if your WM is locking its size/position.
        override-redirect = "false";

        # Put the bar at the bottom of the screen
        bottom = "false";

        # Prefer fixed center position for the `modules-center` block
        # When false, the center position will be based on the size of the other blocks.
        fixed-center = "true";

        # Dimension defined as pixel value (e.g. 35) or percentage (e.g. 50%),
        # the percentage can optionally be extended with a pixel offset like so:
        # 50%:-10, this will result in a width or height of 50% minus 10 pixels
        width = "100%";
        height = 28;

        # Offset defined as pixel value (e.g. 35) or percentage (e.g. 50%)
        # the percentage can optionally be extended with a pixel offset like so:
        # 50%:-10, this will result in an offset in the x or y direction 
        # of 50% minus 10 pixels
        offset-x = "0%";
        offset-y = "0%";

        # Background ARGB color (e.g. #f00, #ff992a, #ddff1023)
        background = "\${color.background-alt}";

        # Foreground ARGB color (e.g. #f00, #ff992a, #ddff1023)
        foreground = "\${color.foreground}";

        # Background gradient (vertical steps)
        # background-"0-9" = {+ = #aarrggbb
        # background-0 = 

        # Value used for drawing rounded corners
        # Note: This shouldn't be used together with border-size because the border 
        # doesn't get rounded
        # Individual top/bottom values can be defined using:
        # radius-{top,bottom}
        radius-top = "0.0";
        radius-bottom = "0.0";

        # Under-/overline pixel size and argb color
        # Individual values can be defined using:
        # {overline,underline}-size
        # {overline,underline}-color
        line-size = 2;
        line-color = "\${color.primary}";

        # Values applied to all borders
        # Individual side values can be defined using:
        # border-{left,top,right,bottom}-size
        # border-{left,top,right,bottom}-color
        # The top and bottom borders are added to the bar height, so the effective
        # window height is:
        # height + border-top-size + border-bottom-size
        # Meanwhile the effective window width is defined entirely by the width key and
        # the border is placed withing this area. So you effectively only have the
        # following horizontal space on the bar:
        # width - border-right-size - border-left-size
        border-size = 4;
        border-color = "#00000000 ; \${color.primary}";

        # Number of spaces to add at the beginning/end of the bar
        # Individual side values can be defined using:
        # padding-{left,right}
        padding = 0;

        # Number of spaces to add before/after each module
        # Individual side values can be defined using:
        # module-margin-{left,right}
        module-margin-left = 0;
        module-margin-right = 0;

        # Fonts are defined using <font-name>;<vertical-offset>
        # Font names are specified using a fontconfig pattern.
        # font-0 = "NotoSans-Regular:size=8"2
        # font-1 = MaterialIcons:size=10
        # font-2 = "Termsynu:size=8"-1
        # font-3 = FontAwesome:size=10
        # See the Fonts wiki page for more details

        # Text Fonts
        font-0 = "Iosevka Nerd Font:style=Medium:size=10;4";
        # Icons Fonts
        font-1 = "feather:style=Medium:size=12;3";
        # Powerline Glyphs
        font-2 = "Iosevka Nerd Font:style=Medium:size=19;3";
        # Larger font size for bar fill icons
        font-3 = "Iosevka Nerd Font:style=Medium:size=12;4";
        # Smaller font size for shorter spaces
        font-4 = "Iosevka Nerd Font:style=Medium:size=7;4";

        # Modules are added to one of the available blocks
        # modules-left = cpu ram
        # modules-center = xwindow xbacklight
        # modules-right = ipc clock

      };

      "bar/top" = {
        "inherit" = "bar/main";
        modules-left = "workspaces decor1 decor2 title decor1";
        modules-right = "decor4 temperature battery_bar decor3 decor4 keyboard decor3 decor4 date sysmenu";
        border-bottom-size = 0;
      };

      "bar/bottom" = {
        "inherit" = "bar/main";
        bottom = "true";
        modules-left = "cpu memory_bar filesystem decor3";
        modules-right = "decor2 wired-network pipe wireless-network decor1 decor2 volume brightness";
        border-top-size = 0;

      };

    # Application Settings

    "settings" = {
      # The throttle settings lets the eventloop swallow up til X events
      # if they happen within Y millisecond after first event was received.
      # This is done to prevent flood of update event.
      # 
      # For example if 5 modules emit an update event at the same time, we really
      # just care about the last one. But if we wait too long for events to swallow
      # the bar would appear sluggish so we continue if timeout
      # expires or limit is reached.
      throttle-output = 5;
      throttle-output-for = 10;

      # Time in milliseconds that the input handler will wait between processing events
      # throttle-input-for = 30

      # Reload upon receiving XCB_RANDR_SCREEN_CHANGE_NOTIFY events
      screenchange-reload = "false";

      # Compositing operators
      # @see: https://www.cairographics.org/manual/cairo-cairo-t.html#cairo-operator-t
      compositing-background = "source";
      compositing-foreground = "over";
      compositing-overline = "over";
      compositing-underline = "over";
      compositing-border = "over";

      # Define fallback values used by all module formats
      # format-foreground = 
      # format-background = 
      # format-underline =
      # format-overline =
      # format-spacing =
      # format-padding =
      # format-margin =
      # format-offset =

      # Enables pseudo-transparency for the bar
      # If set to true the bar can be transparent without a compositor.
      pseudo-transparency = "true";

    };
      # ┌────────────────────────────────────────────────────────────────┐
      # │░█▀█░█▀█░█░░░█░█░█▀▄░█▀█░█▀▄░░░░░░░░░█▄█░█▀█░█▀▄░█░█░█░░░█▀▀░█▀▀│
      # │░█▀▀░█░█░█░░░░█░░█▀▄░█▀█░█▀▄░░░░▀░░░░█░█░█░█░█░█░█░█░█░░░█▀▀░▀▀█│
      # │░▀░░░▀▀▀░▀▀▀░░▀░░▀▀░░▀░▀░▀░▀░░░░▀░░░░▀░▀░▀▀▀░▀▀░░▀▀▀░▀▀▀░▀▀▀░▀▀▀│
      # │░Created░By░Aditya░Shakya░@adi1090x░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
      # └────────────────────────────────────────────────────────────────┘


      "module/alsa" = {
        type = "internal/alsa";

      # Soundcard to be used
      # Usually in the format hw:# where # is the card number
      # You can find the different card numbers in `/proc/asound/cards`
      master-soundcard = "default";
      speaker-soundcard = "default";
      headphone-soundcard = "default";

      # Name of the master, speaker and headphone mixers
      # Use the following command to list available mixer controls:
      # \$ amixer scontrols | sed -nr "s/.*'("[:alnum:]" = {+)'.*/\1/p"
      # If master, speaker or headphone-soundcard isn't the default, 
      # use `amixer -c # scontrols` instead where # is the number 
      # of the master, speaker or headphone soundcard respectively
      # 
      # Default: Master
      master-mixer = "Master";

      # Optionally define speaker and headphone mixers
      # Default: none
      # speaker-mixer = Speaker
      # Default: none
      # headphone-mixer = Headphone

      # NOTE: This is required if headphone_mixer is defined
      # Use the following command to list available device controls
      # \$ amixer controls | sed -r "/CARD/\!d; s/.*=("0-9]+).*name='([^'" = {+)'.*/printf '%3.0f: %s\n' '\1' '\2'/e" | sort
      # You may also need to use `amixer -c # controls` as above for the mixer names
      # Default: none
      # headphone-id = 9

      # Use volume mapping (similar to amixer -M and alsamixer), where the increase in volume is linear to the ear
      # Default: false
      # mapped = true

      # Interval for volume increase/decrease (in percent points)
      # Default: 5
      interval = 5;

      # Available tags:
      # <label-volume> (default)
      # <ramp-volume>
      # <bar-volume>
      format-volume = "<ramp-volume> <label-volume>";
      format-volume-background = "\${color.background}";
      format-volume-padding = 1;

      # Available tags:
      # <label-muted> (default)
      # <ramp-volume>
      # <bar-volume>
      format-muted = "<label-muted>";
      format-muted-prefix = "";
      format-muted-background = "\${color.background}";
      format-muted-padding = 1;

      # Available tokens:
      # %percentage% (default)
      label-volume = "%percentage%%";

      # Available tokens:
      # %percentage% (default
      label-muted = " Muted";
      label-muted-foreground = "\${color.foreground}";

      # Only applies if <ramp-volume> is used
      ramp-volume-0 = "";
      ramp-volume-1 = "";
      ramp-volume-2 = "";

      # If defined, it will replace <ramp-volume> when
      # headphones are plugged in to `headphone_control_numid`
      # If undefined, <ramp-volume> will be used for both
      # Only applies if <ramp-volume> is used
      ramp-headphones-0 = "";

    };

    "module/backlight" = {
      # type = internal/xbacklight
      type = "internal/backlight";

      # Use the following command to list available cards:
      # \$ ls -1 /sys/class/backlight/
      # card = intel_backlight
      card = "amdgpu_bl0";

      # Available tags:
      # <label> (default)
      # <ramp>
      # <bar>
      format = "<ramp> <label>";
      format-background = "\${color.background}";
      format-padding = 1;

      # Available tokens:
      # %percentage% (default)
      label = "%percentage%%";

      # Only applies if <ramp> is used
      ramp-0 = "";
      ramp-1 = "";
      ramp-2 = "";
      ramp-3 = "";
      ramp-4 = "";

    };

    "module/battery" = {
      type = "internal/battery";

      # This is useful in case the battery never reports 100% charge
      full-at = 99;

      # Use the following command to list batteries and adapters:
      # \$ ls -1 /sys/class/power_supply/
      battery = "BAT0";
      adapter = "AC";

      # If an inotify event haven't been reported in this many
      # seconds, manually poll for new values.
      # 
      # Needed as a fallback for systems that don't report events
      # on sysfs/procfs.
      # 
      # Disable polling by setting the interval to 0.
      # 
      # Default: 5
      poll-interval = 2;

      # see "man date" for details on how to format the time string
      # NOTE: if you want to use syntax tags here you need to use %%{...}
      # Default: %H:%M:%S
      time-format = "%H:%M";

      # Available tags:
      # <label-charging> (default)
      # <bar-capacity>
      # <ramp-capacity>
      # <animation-charging>
      format-charging = "<label-charging>";
      format-charging-prefix = " ";
      format-charging-background = "\${color.background}";
      format-charging-padding = 1;

      # Available tags:
      # <label-discharging> (default)
      # <bar-capacity>
      # <ramp-capacity>
      # <animation-discharging>
      format-discharging = "<label-discharging>";
      format-discharging-prefix = " ";
      format-discharging-background = "\${color.background}";
      format-discharging-padding = 1;

      # Available tags:
      # <label-full> (default)
      # <bar-capacity>
      # <ramp-capacity>
      format-full = "<label-full>";
      format-full-prefix = " ";
      format-full-background = "\${color.background}";
      format-full-padding = 1;

      # Available tokens:
      # %percentage% (default)
      # %time%
      # %consumption% (shows current charge rate in watts)
      label-charging = "%percentage%%";

      # Available tokens:
      # %percentage% (default)
      # %time%
      # %consumption% (shows current discharge rate in watts)
      label-discharging = "%percentage%%";

      # Available tokens:
      # %percentage% (default)
      label-full = "Full";

      # Only applies if <ramp-capacity> is used
      ramp-capacity-0 = "";
      ramp-capacity-1 = "";
      ramp-capacity-2 = "";
      ramp-capacity-3 = "";
      ramp-capacity-4 = "";

      # Only applies if <bar-capacity> is used
      # bar-capacity-width = 10

      # Only applies if <animation-charging> is used
      animation-charging-0 = "";
      animation-charging-1 = "";

      # Framerate in milliseconds
      animation-charging-framerate = 750;

      # Only applies if <animation-discharging> is used
      # animation-discharging-0 = \${battery.anim0}
      # animation-discharging-1 = \${battery.anim1}

      # Framerate in milliseconds
      # animation-discharging-framerate = 500

    };

      # "module/bspwm" = {
      # type = internal/bspwm

      # Only show workspaces defined on the same output as the bar
      # NOTE: The bspwm and XRandR monitor names must match, which they do by default.
      # Default: true
      # pin-workspaces = true

      # Output mode flags after focused state label
      # Default: false
      # inline-mode = false

      # Create click handler used to focus workspace
      # Default: true
      # enable-click = false

      # Create scroll handlers used to cycle workspaces
      # Default: true
      # enable-scroll = false

      # Set the scroll cycle direction 
      # Default: true
      # reverse-scroll = false

      # Use fuzzy (partial) matching on labels when assigning 
      # icons to workspaces
      # Example: code;♚ will apply the icon to all workspaces 
      # containing 'code' in the label
      # Default: false
      # fuzzy-match = true

      # ws-icon-"0-9" = "{+ = label"icon
      # Note that the label needs to correspond with the bspwm workspace name
      # ws-icon-0 = "code"♚
      # ws-icon-1 = "office"♛
      # ws-icon-2 = "graphics"♜
      # ws-icon-3 = "mail"♝
      # ws-icon-4 = "web"♞
      # ws-icon-default = ♟

      # Available tags:
      # <label-monitor>
      # <label-state> - gets replaced with <label-(focused|urgent|occupied|empty)>
      # <label-mode> - gets replaced with <label-(monocle|tiled|fullscreen|floating|locked|sticky|private)>
      # Default: <label-state>
      # format = <label-state> <label-mode>

      # Available tokens:
      # %name%
      # Default: %name%
      # label-monitor = %name%

      # If any values for label-dimmed-N are defined, the workspace/mode
      # colors will get overridden with those values if the monitor is out of focus
      # To only override workspaces in a specific state, use:
      # label-dimmed-focused
      # label-dimmed-occupied
      # label-dimmed-urgent
      # label-dimmed-empty
      # label-dimmed-foreground = #555
      # label-dimmed-underline = \${bar/top.background}
      # label-dimmed-focused-background = #f00

      # Available tokens:
      # %name%
      # %icon%
      # %index%
      # Default: %icon%  %name%
      # label-focused = %icon%
      # label-focused-foreground = #ffffff
      # label-focused-background = #3f3f3f
      # label-focused-underline = #fba922

      # Available tokens:
      # %name%
      # %icon%
      # %index%
      # Default: %icon%  %name%
      # label-occupied = %icon%
      # label-occupied-underline = #555555

      # Available tokens:
      # %name%
      # %icon%
      # %index%
      # Default: %icon%  %name%
      # label-urgent = %icon%
      # label-urgent-foreground = #000000
      # label-urgent-background = #bd2c40
      # label-urgent-underline = #9b0a20

      # Available tokens:
      # %name%
      # %icon%
      # %index%
      # Default: %icon%  %name%
      # label-empty = %icon%
      # label-empty-foreground = #55

      # The following labels will be used to indicate the layout/mode
      # for the focused workspace. Requires <label-mode>
      # 
      # Available tokens:
      # None
      # label-monocle = 
      # label-tiled = 
      # label-fullscreen = 
      # label-floating = 
      # label-pseudotiled = P
      # label-locked = 
      # label-locked-foreground = #bd2c40
      # label-sticky = 
      # label-sticky-foreground = #fba922
      # label-private = 
      # label-private-foreground = #bd2c40

      # Separator in between workspaces
      # label-separator = |
      # label-separator-padding = 2
      # label-separator-foreground = #ffb52a

      # };

      "module/cpu" = {
        type = "internal/cpu";

      # Seconds to sleep between updates
      # Default: 1
      interval = 1;

      # Available tags:
      # <label> (default)
      # <bar-load>
      # <ramp-load>
      # <ramp-coreload>
      # format = <label> <ramp-coreload>
      format = "<label>";
      format-prefix = "";
      format-background = "\${color.background}";
      format-padding = 1;

      # Available tokens:
      # %percentage% (default) - total cpu load averaged over all cores
      # %percentage-sum% - Cumulative load on all cores
      # %percentage-cores% - load percentage for each core
      # %percentage-core"1-9" = {% - load percentage for specific core
      label = " %percentage%%";

      # Spacing between individual per-core ramps
      # ramp-coreload-spacing = 1
      # ramp-coreload-0 = \${cpu.load0}
      # ramp-coreload-1 = \${cpu.load1}

      # ramp-load-0 = \${cpu.load0}
      # ramp-load-1 = \${cpu.load1}

    };

    "module/date" = {
      type = "internal/date";

      # Seconds to sleep between updates
      interval = "1.0";

      # See "http://en.cppreference.com/w/cpp/io/manip/put_time" for details on how to format the date string
      # NOTE: if you want to use syntax tags here you need to use %%{...}
      # date = %Y-%m-%d%

      # Optional time format
      time = " %a, %d %b %Y  %H:%M";

      # if `date-alt` or `time-alt` is defined, clicking
      # the module will toggle between formats
      # date-alt = %A, %d %B %Y
      time-alt = " %a, %d %b %Y  %H:%M:%S";

      # Available tags:
      # <label> (default)
      format = "<label>";
      format-background = "\${color.background}";
      format-padding = 1;

      # Available tokens:
      # %date%
      # %time%
      # Default: %date%
      label = "%time%";

    };

    "module/filesystem" = {
      type = "internal/fs";

      # Mountpoints to display
      mount-0 = "/";
      # mount-1 = /home
      # mount-2 = /var

      # Seconds to sleep between updates
      # Default: 30
      interval = 30;

      # Display fixed precision values
      # Default: false
      fixed-values = "true";

      # Spacing between entries
      # Default: 2
      # spacing = 4

      # Available tags:
      # <label-mounted> (default)
      # <bar-free>
      # <bar-used>
      # <ramp-capacity>
      format-mounted = "<label-mounted>";
      format-mounted-prefix = "";
      format-mounted-background = "\${color.background}";
      format-mounted-padding = 1;

      # Available tags:
      # <label-unmounted> (default)
      format-unmounted = "<label-unmounted>";
      format-unmounted-prefix = "";
      format-unmounted-background = "\${color.background}";
      format-unmounted-padding = 1;

      # Available tokens:
      # %mountpoint%
      # %type%
      # %fsname%
      # %percentage_free%
      # %percentage_used%
      # %total%
      # %free%
      # %used%
      # Default: %mountpoint% %percentage_free%%
      label-mounted = " %free%";

      # Available tokens:
      # %mountpoint%
      # Default: %mountpoint% is not mounted
      label-unmounted = " %mountpoint%: not mounted";

    };

      # "module/github" = {
      # type = internal/github

      # Accessing an access token stored in file
      # token = \${file:/path/to/file/containing/github/access.token}

      # Accessing an access token stored in an environment variable
      # token = \${env:GITHUB_ACCESS_TOKEN}

      # Whether empty notifications should be displayed or not
      # empty-notifications = false

      # Number of seconds in between requests
      # interval = 10

      # Available tags:
      # <label> (default)
      # format = <label>
      # format-prefix = 

      # Available tokens:
      # %notifications% (default)
      # Default: Notifications: %notifications%
      # label = %notifications%

      # _-_-_-_-_-_-_-_-_-_-_-_-_-_

      # "module/i3" = {
      # type = internal/i3

      # Only show workspaces defined on the same output as the bar
      # 
      # Useful if you want to show monitor specific workspaces
      # on different bars
      # 
      # Default: false
      # pin-workspaces = true

      # This will split the workspace name on ':'
      # Default: false
      # strip-wsnumbers = true

      # Sort the workspaces by index instead of the default
      # sorting that groups the workspaces by output
      # Default: false
      # index-sort = true

      # Create click handler used to focus workspace
      # Default: true
      # enable-click = false

      # Create scroll handlers used to cycle workspaces
      # Default: true
      # enable-scroll = false

      # Wrap around when reaching the first/last workspace
      # Default: true
      # wrapping-scroll = false

      # Set the scroll cycle direction 
      # Default: true
      # reverse-scroll = false

      # Use fuzzy (partial) matching on labels when assigning 
      # icons to workspaces
      # Example: code;♚ will apply the icon to all workspaces 
      # containing 'code' in the label
      # Default: false
      # fuzzy-match = true

      # ws-icon-"0-9" = "{+ = label"icon
      # NOTE: The label needs to match the name of the i3 workspace
      # ws-icon-0 = 1;♚
      # ws-icon-1 = 2;♛
      # ws-icon-2 = 3;♜
      # ws-icon-3 = 4;♝
      # ws-icon-4 = 5;♞
      # ws-icon-default = ♟
      # NOTE: You cannot skip icons, e.g. to get a ws-icon-6
      # you must also define a ws-icon-5.

      # Available tags:
      # <label-state> (default) - gets replaced with <label-(focused|unfocused|visible|urgent)>
      # <label-mode> (default)
      # format = <label-state> <label-mode>

      # Available tokens:
      # %mode%
      # Default: %mode%
      # label-mode = %mode%
      # label-mode-padding = 2
      # label-mode-background = #e60053

      # Available tokens:
      # %name%
      # %icon%
      # %index%
      # %output%
      # Default: %icon%  %name%
      # label-focused = %index%
      # label-focused-foreground = #ffffff
      # label-focused-background = #3f3f3f
      # label-focused-underline = #fba922
      # label-focused-padding = 4

      # Available tokens:
      # %name%
      # %icon%
      # %index%
      # %output%
      # Default: %icon%  %name%
      # label-unfocused = %index%
      # label-unfocused-padding = 4

      # Available tokens:
      # %name%
      # %icon%
      # %index%
      # %output%
      # Default: %icon%  %name%
      # label-visible = %index%
      # label-visible-underline = #555555
      # label-visible-padding = 4

      # Available tokens:
      # %name%
      # %icon%
      # %index%
      # %output%
      # Default: %icon%  %name%
      # label-urgent = %index%
      # label-urgent-foreground = #000000
      # label-urgent-background = #bd2c40
      # label-urgent-padding = 4

      # Separator in between workspaces
      # label-separator = |
      # label-separator-padding = 2
      # label-separator-foreground = #ffb52a

      # _-_-_-_-_-_-_-_-_-_-_-_-_-_

      "module/memory" = {
        type = "internal/memory";

      # Seconds to sleep between updates
      # Default: 1
      interval = 1;

      # Available tags:
      # <label> (default)
      # <bar-used>
      # <bar-free>
      # <ramp-used>
      # <ramp-free>
      # <bar-swap-used>
      # <bar-swap-free>
      # <ramp-swap-used>
      # <ramp-swap-free>
      format = "<label>";
      format-prefix = "";
      format-background = "\${color.background}";
      format-padding = 1;

      # Available tokens:
      # %percentage_used% (default)
      # %percentage_free%
      # %gb_used%
      # %gb_free%
      # %gb_total%
      # %mb_used%
      # %mb_free%
      # %mb_total%
      # %percentage_swap_used%
      # %percentage_swap_free%
      # %mb_swap_total%
      # %mb_swap_free%
      # %mb_swap_used%
      # %gb_swap_total%
      # %gb_swap_free%
      # %gb_swap_used%

      label = " %mb_used%";

      # Only applies if <ramp-used> is used
      # ramp-used-0 = \${memory.used0}
      # ramp-used-1 = \${memory.used1}
      # ramp-used-2 = \${memory.used2}

      # Only applies if <ramp-free> is used
      # ramp-free-0 = \${memory.free0}
      # ramp-free-1 = \${memory.free1}
      # ramp-free-2 = \${memory.free2}

    };

    "module/mpd" = {
      type = "internal/mpd";

      # Host where mpd is running (either ip or domain name)
      # Can also be the full path to a unix socket where mpd is running.
      # host = 127.0.0.1
      # port = 6600
      # password = mysecretpassword

      # Seconds to sleep between progressbar/song timer sync
      # Default: 1
      interval = 1;

      # Available tags:
      # <label-song> (default)
      # <label-time>
      # <bar-progress>
      # <toggle> - gets replaced with <icon-(pause|play)>
      # <toggle-stop> - gets replaced with <icon-(stop|play)>
      # <icon-random>
      # <icon-repeat>
      # <icon-repeatone> (deprecated)
      # <icon-single> - Toggle playing only a single song. Replaces <icon-repeatone>
      # <icon-consume>
      # <icon-prev>
      # <icon-stop>
      # <icon-play>
      # <icon-pause>
      # <icon-next>
      # <icon-seekb>
      # <icon-seekf>
      format-online = "<label-song> <icon-prev> <toggle> <icon-next>";
      format-online-prefix = "";
      format-online-background = "\${color.background}";
      format-online-padding = 1;

      # format-playing = \${self.format-online}
      # format-paused = \${self.format-online}
      # format-stopped = \${self.format-online}

      # Available tags:
      # <label-offline>
      format-offline = "<label-offline>";
      format-offline-prefix = "";
      format-offline-background = "\${color.background}";
      format-offline-padding = 1;

      # Available tokens:
      # %artist%
      # %album-artist%
      # %album%
      # %date%
      # %title%
      # Default: %artist% - %title%
      label-song = " %artist% - %title%";
      label-song-maxlen = 25;
      label-song-ellipsis = "true";

      # Available tokens:
      # %elapsed%
      # %total%
      # Default: %elapsed% / %total%
      label-time = "%elapsed% / %total%";

      # Available tokens:
      # None
      label-offline = " Offline";

      # Only applies if <icon-X> is used
      icon-play = "";
      icon-pause = "";
      icon-stop = "";
      icon-next = "";
      icon-prev = "";
      icon-seekf = "";
      icon-seekb = "";
      icon-random = "";
      icon-repeat = "";
      icon-repeatone = "";
      icon-single = "";
      icon-consume = "";

      # Used to display the state of random/repeat/repeatone/single
      # Only applies if <icon-"random|repeat|repeatone|single" = {> is used
      toggle-on-foreground = "\${color.green}";
      toggle-off-foreground = "\${color.red}";

      # Only applies if <bar-progress> is used
      # bar-progress-width = 45
      # bar-progress-indicator = |
      # bar-progress-fill = ─
      # bar-progress-empty = ─

    };

      # If you use both a wired and a wireless network, just add 2 module definitions. For example
      "module/wired-network" = {
        "inherit" = "module/network";
        type = "internal/network";
        interface = "enp2s0";
        label-connected = "%{A1:networkmanager_dmenu &:} ethernet %local_ip%  %downspeed%  %upspeed%%{A}";
        format-connected-prefix = "";
        format-disconnected-prefix = "";
      };

      "module/wireless-network" = {
        "inherit" = "module/network";
        type = "internal/network";
        interface = "wlp4s0";
        label-connected = "%{A1:networkmanager_dmenu &:} %essid% %local_ip%  %downspeed%  %upspeed%%{A}";
      };

      "module/network" = {
        type = "internal/network";

        interface = "enp2s0";

      # Seconds to sleep between updates
      # Default: 1
      interval = "1.0";

      # Test connectivity every Nth update
      # A value of 0 disables the feature
      # NOTE: Experimental (needs more testing)
      # Default: 0
      # ping-interval = 3

      # @deprecated: Define min width using token specifiers (%downspeed:min% and %upspeed:min%)
      # Minimum output width of upload/download rate
      # Default: 3
      # udspeed-minwidth = 5

      # Accumulate values from all interfaces
      # when querying for up/downspeed rate
      # Default: false
      accumulate-stats = "true";

      # Consider an `UNKNOWN` interface state as up.
      # Some devices have an unknown state, even when they're running
      # Default: false
      unknown-as-up = "true";

      # Available tags:
      # <label-connected> (default)
      # <ramp-signal>
      format-connected = "<label-connected>";
      format-connected-prefix = "";
      format-connected-background = "\${color.background}";
      format-connected-padding = 1;

      # Available tags:
      # <label-disconnected> (default)
      format-disconnected = "<label-disconnected>";
      format-disconnected-prefix = "";
      format-disconnected-background = "\${color.background}";
      format-disconnected-padding = 1;

      # Available tags:
      # <label-connected> (default)
      # <label-packetloss>
      # <animation-packetloss>
      # format-packetloss = <animation-packetloss> <label-connected>

      # Available tokens:
      # %ifname%    "wireless+wired" = {
      # %local_ip%  "wireless+wired" = {
      # %local_ip6% "wireless+wired" = {
      # %essid%     "wireless" = {
      # %signal%    "wireless" = {
      # %upspeed%   "wireless+wired" = {
      # %downspeed% "wireless+wired" = {
      # %linkspeed% "wired" = {
      # Default: %ifname% %local_ip%
      label-connected = "%{A1:networkmanager_dmenu &:} %ifname% %local_ip%  %downspeed%  %upspeed%%{A}";

      # Available tokens:
      # %ifname%    "wireless+wired" = {
      # Default: (none)
      label-disconnected = "%{A1:networkmanager_dmenu &:} Offline%{A}";
      # label-disconnected-foreground = #66ffffff

      # Available tokens:
      # %ifname%    "wireless+wired" = {
      # %local_ip%  "wireless+wired" = {
      # %local_ip6% "wireless+wired" = {
      # %essid%     "wireless" = {
      # %signal%    "wireless" = {
      # %upspeed%   "wireless+wired" = {
      # %downspeed% "wireless+wired" = {
      # %linkspeed% "wired" = {
      # Default: (none)
      # label-packetloss = %essid%
      # label-packetloss-foreground = #eefafafa

      # Only applies if <ramp-signal> is used
      ramp-signal-0 = "";
      ramp-signal-1 = "";
      ramp-signal-2 = "";

      # Only applies if <animation-packetloss> is used
      # animation-packetloss-0 = ⚠
      # animation-packetloss-0-foreground = #ffa64c
      # animation-packetloss-1 = ⚠
      # animation-packetloss-1-foreground = #000000
      # Framerate in milliseconds
      # animation-packetloss-framerate = 500

    };

    "module/pulseaudio" = {
      type = "internal/pulseaudio";

      # Sink to be used, if it exists (find using `pacmd list-sinks`, name field)
      # If not, uses default sink
      sink = "alsa_output.pci-0000_03_00.6.analog-stereo";

      # Use PA_VOLUME_UI_MAX (~153%) if true, or PA_VOLUME_NORM (100%) if false
      # Default: true
      use-ui-max = "false";

      # Interval for volume increase/decrease (in percent points)
      # Default: 5
      interval = 5;

      # Available tags:
      # <label-volume> (default)
      # <ramp-volume>
      # <bar-volume>
      format-volume = "<ramp-volume> <label-volume>";
      format-volume-background = "\${color.background}";
      format-volume-padding = 1;

      # Available tags:
      # <label-muted> (default)
      # <ramp-volume>
      # <bar-volume>
      format-muted = "<label-muted>";
      format-muted-prefix = "";
      format-muted-background = "\${color.background}";
      format-muted-padding = 1;

      # Available tokens:
      # %percentage% (default)
      label-volume = "%percentage%%";

      # Available tokens:
      # %percentage% (default
      label-muted = " Muted";
      label-muted-foreground = "\${color.foreground}";

      # Only applies if <ramp-volume> is used
      ramp-volume-0 = "";
      ramp-volume-1 = "";
      ramp-volume-2 = "";

    };

    "module/temperature" = {
      type = "internal/temperature";

      # Seconds to sleep between updates
      # Default: 1
      interval = "0.5";

      # Thermal zone to use
      # To list all the zone types, run 
      # \$ for i in /sys/class/thermal/thermal_zone*; do echo "\$i: \$(<\$i/type)"; done
      # Default: 0
      thermal-zone = 0;

      # Full path of temperature sysfs path
      # Use `sensors` to find preferred temperature source, then run
      # \$ for i in /sys/class/hwmon/hwmon*/temp*_input; do echo "\$(<\$(dirname \$i)/name): \$(cat \${i%_*}_label 2>/dev/null || echo \$(basename \${i%_*})) \$(readlink -f \$i)"; done
      # to find path to desired file
      # Default reverts to thermal zone setting
      # hwmon-path = /sys/devices/platform/coretemp.0/hwmon/hwmon2/temp1_input
      hwmon-path = "/sys/devices/pci0000:00/0000:00:08.1/0000:05:00.0/hwmon/hwmon4/temp1_input";

      # Threshold temperature to display warning label (in degrees celsius)
      # Default: 80
      warn-temperature = 65;

      # Whether or not to show units next to the temperature tokens (°C, °F)
      # Default: true
      units = "true";

      # Available tags:
      # <label> (default)
      # <ramp>
      format = "<ramp> <label>";
      format-background = "\${color.background}";
      format-padding = 1;

      # Available tags:
      # <label-warn> (default)
      # <ramp>
      format-warn = "<ramp> <label-warn>";
      format-warn-background = "\${color.background}";
      format-warn-padding = 1;

      # Available tokens:
      # %temperature% (deprecated)
      # %temperature-c%   (default, temperature in °C)
      # %temperature-f%   (temperature in °F)
      label = "%temperature-c%";

      # Available tokens:
      # %temperature% (deprecated)
      # %temperature-c%   (default, temperature in °C)
      # %temperature-f%   (temperature in °F)
      label-warn = "%temperature-c%";
      label-warn-foreground = "\${color.red}";

      # Requires the <ramp> tag
      # The icon selection will range from 0 to `warn-temperature`
      # with the current temperature as index.
      ramp-0 = "";
      ramp-1 = "";
      ramp-2 = "";
      ramp-3 = "";
      ramp-4 = "";

    };

    "module/keyboard" = {
      type = "internal/xkeyboard";

      # List of indicators to ignore
      blacklist-0 = "num lock";
      blacklist-1 = "scroll lock";

      # Available tags:
      # <label-layout> (default)
      # <label-indicator> (default)
      format = "<label-layout> <label-indicator>";
      format-background = "\${color.background}";
      format-padding = 1;
      format-prefix = "";

      # Available tokens:
      # %layout%
      # %name%
      # %number%
      # Default: %layout%
      label-layout = " %layout%";

      # Available tokens:
      # %name%
      # Default: %name%
      label-indicator-on = "%name%";
      label-indicator-on-foreground = "\${color.primary}";

    };

    "module/title" = {
      type = "internal/xwindow";

      # Available tags:
      # <label> (default)
      format = "<label>";
      format-background = "\${color.background}";
      format-padding = 0;
      # format-prefix = 

      # Available tokens:
      # %title%
      # Default: %title%
      label = "%title%";
      label-maxlen = 300;

      # Used instead of label when there is no window title
      # label-empty = Arch Linux

    };

    "module/workspaces" = {
      type = "internal/xworkspaces";

      # Only show workspaces defined on the same output as the bar
      # 
      # Useful if you want to show monitor specific workspaces
      # on different bars
      # 
      # Default: false
      pin-workspaces = "true";

      # Create click handler used to focus desktop
      # Default: true
      enable-click = "true";

      # Create scroll handlers used to cycle desktops
      # Default: true
      enable-scroll = "true";

      # icon-"0-9" = "{+ = <desktop-name>"<icon>
      # NOTE: The desktop name needs to match the name configured by the WM
      # You can get a list of the defined desktops using:
      # \$ xprop -root _NET_DESKTOP_NAMES
      icon-0 = "1;";
      icon-1 = "2;";
      icon-2 = "3;";
      icon-3 = "4;";
      icon-4 = "5;";
      icon-default = "";


      # Available tags:
      # <label-monitor>
      # <label-state> - gets replaced with <label-(active|urgent|occupied|empty)>
      # Default: <label-state>
      format = "<label-state>";
      format-background = "\${color.background}";
      format-padding = 0;

      # Available tokens:
      # %name%
      # Default: %name%
      label-monitor = "%name%";

      # Available tokens:
      # %name%
      # %icon%
      # %index%
      # Default: %icon%  %name%
      label-active = "%icon%";
      label-active-foreground = "\${color.red}";
      label-active-overline = "\${color.red}";

      # Available tokens:
      # %name%
      # %icon%
      # %index%
      # Default: %icon%  %name%
      label-occupied = "%icon%";
      label-occupied-foreground = "\${color.yellow}";

      # Available tokens:
      # %name%
      # %icon%
      # %index%
      # Default: %icon%  %name%
      label-urgent = "%icon%";
      label-urgent-foreground = "\${color.green}";

      # Available tokens:
      # %name%
      # %icon%
      # %index%
      # Default: %icon%  %name%
      label-empty = "%icon%";

      label-active-padding = 1;
      label-urgent-padding = 1;
      label-occupied-padding = 1;
      label-empty-padding = 1;

    };
      # ┌────────────────────────────────────────────────────┐
      # │░█▀█░█▀█░█░░░█░█░█▀▄░█▀█░█▀▄░░░░░░░░░█▀▄░█▀█░█▀▄░█▀▀│
      # │░█▀▀░█░█░█░░░░█░░█▀▄░█▀█░█▀▄░░░░▀░░░░█▀▄░█▀█░█▀▄░▀▀█│
      # │░▀░░░▀▀▀░▀▀▀░░▀░░▀▀░░▀░▀░▀░▀░░░░▀░░░░▀▀░░▀░▀░▀░▀░▀▀▀│
      # │░Created░By░Aditya░Shakya░@adi1090x░░░░░░░░░░░░░░░░░│
      # └────────────────────────────────────────────────────┘

      "bar" = {
        fill = "ﭳ";
        empty = "ﭳ";
        indicator = "";
        width = 6;
        format = "%{T4}%fill%%indicator%%empty%%{F-}%{T-}";
      };

      "module/volume" = {
        type = "internal/alsa";

      # Soundcard to be used
      # Usually in the format hw:# where # is the card number
      # You can find the different card numbers in `/proc/asound/cards`
      master-soundcard = "default";
      speaker-soundcard = "default";
      headphone-soundcard = "default";

      # Name of the master, speaker and headphone mixers
      # Use the following command to list available mixer controls:
      # \$ amixer scontrols | sed -nr "s/.*'("[:alnum:]" = {+)'.*/\1/p"
      # If master, speaker or headphone-soundcard isn't the default, 
      # use `amixer -c # scontrols` instead where # is the number 
      # of the master, speaker or headphone soundcard respectively
      # 
      # Default: Master
      master-mixer = "Master";

      # Optionally define speaker and headphone mixers
      # Default: none
      # speaker-mixer = Speaker
      # Default: none
      # headphone-mixer = Headphone

      # NOTE: This is required if headphone_mixer is defined
      # Use the following command to list available device controls
      # \$ amixer controls | sed -r "/CARD/\!d; s/.*=("0-9]+).*name='([^'" = {+)'.*/printf '%3.0f: %s\n' '\1' '\2'/e" | sort
      # You may also need to use `amixer -c # controls` as above for the mixer names
      # Default: none
      # headphone-id = 9

      # Use volume mapping (similar to amixer -M and alsamixer), where the increase in volume is linear to the ear
      # Default: false
      # mapped = true

      # Interval for volume increase/decrease (in percent points)
      # Default: 5
      interval = 5;

      # Available tags:
      # <label-volume> (default)
      # <ramp-volume>
      # <bar-volume>
      format-volume = "<ramp-volume> <bar-volume>";
      format-volume-background = "\${color.background}";
      format-volume-padding = 1;

      # Available tags:
      # <label-muted> (default)
      # <ramp-volume>
      # <bar-volume>
      format-muted = "<label-muted>";
      format-muted-prefix = "";
      format-muted-background = "\${color.background}";
      format-muted-padding = 1;

      # Available tokens:
      # %percentage% (default)
      label-volume = "%percentage%%";

      # Available tokens:
      # %percentage% (default
      label-muted = " Muted";
      label-muted-foreground = "\${color.foreground}";

      # Only applies if <ramp-volume> is used
      ramp-volume-0 = "";
      ramp-volume-1 = "";
      ramp-volume-2 = "";

      # Only applies if <bar-volume> is used
      bar-volume-format = "\${bar.format}";
      bar-volume-width = "\${bar.width}";
      bar-volume-gradient = "false";

      bar-volume-indicator = "\${bar.indicator}";
      bar-volume-indicator-foreground = "\${color.foreground}";

      bar-volume-fill = "\${bar.fill}";
      bar-volume-foreground-0 = "\${color.green}";
      bar-volume-foreground-1 = "\${color.green}";
      bar-volume-foreground-2 = "\${color.yellow}";
      bar-volume-foreground-3 = "\${color.yellow}";
      bar-volume-foreground-4 = "\${color.red}";

      bar-volume-empty = "\${bar.empty}";
      bar-volume-empty-foreground = "\${color.foreground-alt}";

      # If defined, it will replace <ramp-volume> when
      # headphones are plugged in to `headphone_control_numid`
      # If undefined, <ramp-volume> will be used for both
      # Only applies if <ramp-volume> is used
      ramp-headphones-0 = "";

    };

    "module/brightness" = {
      # type = internal/xbacklight
      type = "internal/backlight";

      # Use the following command to list available cards:
      # \$ ls -1 /sys/class/backlight/
      # card = intel_backlight
      card = "amdgpu_bl0";

      # Available tags:
      # <label> (default)
      # <ramp>
      # <bar>
      format = "<ramp> <bar>";
      format-background = "\${color.background}";
      format-padding = 1;

      # Available tokens:
      # %percentage% (default)
      label = "%percentage%%";

      # Only applies if <ramp> is used
      ramp-0 = "";
      ramp-1 = "";
      ramp-2 = "";
      ramp-3 = "";
      ramp-4 = "";

      # Only applies if <bar> is used
      bar-format = "\${bar.format}";
      bar-width = "\${bar.width}";
      bar-gradient = "false";

      bar-indicator = "\${bar.indicator}";
      bar-indicator-foreground = "\${color.foreground}";

      bar-fill = "\${bar.fill}";
      bar-foreground-0 = "\${color.green}";
      bar-foreground-1 = "\${color.green}";
      bar-foreground-2 = "\${color.yellow}";
      bar-foreground-3 = "\${color.yellow}";
      bar-foreground-4 = "\${color.red}";

      bar-empty = "\${bar.empty}";
      bar-empty-foreground = "\${color.foreground-alt}";

    };

    "module/battery_bar" = {
      type = "internal/battery";

      # This is useful in case the battery never reports 100% charge
      full-at = 99;

      # Use the following command to list batteries and adapters:
      # \$ ls -1 /sys/class/power_supply/
      battery = "BAT0";
      adapter = "AC";

      # If an inotify event haven't been reported in this many
      # seconds, manually poll for new values.
      # 
      # Needed as a fallback for systems that don't report events
      # on sysfs/procfs.
      # 
      # Disable polling by setting the interval to 0.
      # 
      # Default: 5
      poll-interval = 2;

      # see "man date" for details on how to format the time string
      # NOTE: if you want to use syntax tags here you need to use %%{...}
      # Default: %H:%M:%S
      time-format = "%H:%M";

      # Available tags:
      # <label-charging> (default)
      # <bar-capacity>
      # <ramp-capacity>
      # <animation-charging>
      format-charging = "<bar-capacity> <label-charging>";
      format-charging-prefix = " ";
      format-charging-background = "\${color.background}";
      format-charging-padding = 1;

      # Available tags:
      # <label-discharging> (default)
      # <bar-capacity>
      # <ramp-capacity>
      # <animation-discharging>
      format-discharging = "<bar-capacity> <label-discharging>";
      format-discharging-prefix = " ";
      format-discharging-background = "\${color.background}";
      format-discharging-padding = 1;

      # Available tags:
      # <label-full> (default)
      # <bar-capacity>
      # <ramp-capacity>
      format-full = "<label-full>";
      format-full-prefix = " ";
      format-full-background = "\${color.background}";
      format-full-padding = 1;

      # Available tokens:
      # %percentage% (default)
      # %time%
      # %consumption% (shows current charge rate in watts)

      label-charging = "%time%";

      # Available tokens:
      # %percentage% (default)
      # %time%
      # %consumption% (shows current discharge rate in watts)
      label-discharging = "%time%";

      # Available tokens:
      # %percentage% (default)
      label-full = " Full";

      # Only applies if <bar-capacity> is used
      bar-capacity-format = "\${bar.format}";
      bar-capacity-width = "\${bar.width}";
      bar-capacity-gradient = "false";

      bar-capacity-indicator = "\${bar.indicator}";
      bar-capacity-indicator-foreground = "\${color.foreground}";

      bar-capacity-fill = "\${bar.fill}";
      bar-capacity-foreground-0 = "\${color.red}";
      bar-capacity-foreground-1 = "\${color.yellow}";
      bar-capacity-foreground-2 = "\${color.yellow}";
      bar-capacity-foreground-3 = "\${color.green}";
      bar-capacity-foreground-4 = "\${color.green}";

      bar-capacity-empty = "\${bar.empty}";
      bar-capacity-empty-foreground = "\${color.foreground-alt}";

    };

    "module/cpu_bar" = {
      type = "internal/cpu";

      # Seconds to sleep between updates
      # Default: 1
      interval = "0.5";

      # Available tags:
      # <label> (default)
      # <bar-load>
      # <ramp-load>
      # <ramp-coreload>
      # format = <label> <ramp-coreload>
      format = "<bar-load> <label>";
      format-prefix = " ";
      format-background = "\${color.background}";
      format-padding = 1;

      # Available tokens:
      # %percentage% (default) - total cpu load averaged over all cores
      # %percentage-sum% - Cumulative load on all cores
      # %percentage-cores% - load percentage for each core
      # %percentage-core"1-9" = {% - load percentage for specific core
      label = "%percentage%%";

      # Only applies if <bar-load> is used
      bar-load-format = "\${bar.format}";
      bar-load-width = "\${bar.width}";
      bar-load-gradient = "false";

      bar-load-indicator = "\${bar.indicator}";
      bar-load-indicator-foreground = "\${color.foreground}";

      bar-load-fill = "\${bar.fill}";
      bar-load-foreground-0 = "\${color.green}";
      bar-load-foreground-1 = "\${color.green}";
      bar-load-foreground-2 = "\${color.yellow}";
      bar-load-foreground-3 = "\${color.yellow}";
      bar-load-foreground-4 = "\${color.red}";

      bar-load-empty = "\${bar.empty}";
      bar-load-empty-foreground = "\${color.foreground-alt}";

    };

    "module/filesystem_bar" = {
      type = "internal/fs";

      # Mountpoints to display
      mount-0 = "/";
      # mount-1 = /home
      # mount-2 = /var

      # Seconds to sleep between updates
      # Default: 30
      interval = 30;

      # Display fixed precision values
      # Default: false
      fixed-values = "false";

      # Spacing between entries
      # Default: 2
      # spacing = 4

      # Available tags:
      # <label-mounted> (default)
      # <bar-free>
      # <bar-used>
      # <ramp-capacity>
      format-mounted = "<bar-used> <label-mounted>";
      format-mounted-prefix = " ";
      format-mounted-background = "\${color.background}";
      format-mounted-padding = 1;

      # Available tags:
      # <label-unmounted> (default)
      format-unmounted = "<label-unmounted>";
      format-unmounted-prefix = " ";
      format-unmounted-background = "\${color.background}";
      format-unmounted-padding = 1;

      # Available tokens:
      # %mountpoint%
      # %type%
      # %fsname%
      # %percentage_free%
      # %percentage_used%
      # %total%
      # %free%
      # %used%
      # Default: %mountpoint% %percentage_free%%
      label-mounted = "%used%/%total%";

      # Available tokens:
      # %mountpoint%
      # Default: %mountpoint% is not mounted
      label-unmounted = "%mountpoint%: not mounted";

      # Only applies if <bar-used> is used
      bar-used-format = "\${bar.format}";
      bar-used-width = "\${bar.width}";
      bar-used-gradient = "false";

      bar-used-indicator = "\${bar.indicator}";
      bar-used-indicator-foreground = "\${color.foreground}";

      bar-used-fill = "\${bar.fill}";
      bar-used-foreground-0 = "\${color.green}";
      bar-used-foreground-1 = "\${color.green}";
      bar-used-foreground-2 = "\${color.yellow}";
      bar-used-foreground-3 = "\${color.yellow}";
      bar-used-foreground-4 = "\${color.red}";

      bar-used-empty = "\${bar.empty}";
      bar-used-empty-foreground = "\${color.foreground-alt}";

    };

    "module/memory_bar" = {
      type = "internal/memory";

      # Seconds to sleep between updates
      # Default: 1
      interval = 2;

      # Available tags:
      # <label> (default)
      # <bar-used>
      # <bar-free>
      # <ramp-used>
      # <ramp-free>
      # <bar-swap-used>
      # <bar-swap-free>
      # <ramp-swap-used>
      # <ramp-swap-free>
      format = "<bar-used> <label>";
      format-prefix = " ";
      format-background = "\${color.background}";
      format-padding = 1;

      # Available tokens:
      # %percentage_used% (default)
      # %percentage_free%
      # %gb_used%
      # %gb_free%
      # %gb_total%
      # %mb_used%
      # %mb_free%
      # %mb_total%
      # %percentage_swap_used%
      # %percentage_swap_free%
      # %mb_swap_total%
      # %mb_swap_free%
      # %mb_swap_used%
      # %gb_swap_total%
      # %gb_swap_free%
      # %gb_swap_used%

      label = "%mb_used%";

      # Only applies if <bar-used> is used
      bar-used-format = "\${bar.format}";
      bar-used-width = "\${bar.width}";
      bar-used-gradient = "false";

      bar-used-indicator = "\${bar.indicator}";
      bar-used-indicator-foreground = "\${color.foreground}";

      bar-used-fill = "\${bar.fill}";
      bar-used-foreground-0 = "\${color.green}";
      bar-used-foreground-1 = "\${color.green}";
      bar-used-foreground-2 = "\${color.yellow}";
      bar-used-foreground-3 = "\${color.yellow}";
      bar-used-foreground-4 = "\${color.red}";

      bar-used-empty = "\${bar.empty}";
      bar-used-empty-foreground = "\${color.foreground-alt}";

    };

    "module/mpd_bar" = {
      type = "internal/mpd";

      # Host where mpd is running (either ip or domain name)
      # Can also be the full path to a unix socket where mpd is running.
      # host = 127.0.0.1
      # port = 6600
      # password = mysecretpassword

      # Seconds to sleep between progressbar/song timer sync
      # Default: 1
      interval = 1;

      # Available tags:
      # <label-song> (default)
      # <label-time>
      # <bar-progress>
      # <toggle> - gets replaced with <icon-(pause|play)>
      # <toggle-stop> - gets replaced with <icon-(stop|play)>
      # <icon-random>
      # <icon-repeat>
      # <icon-repeatone> (deprecated)
      # <icon-single> - Toggle playing only a single song. Replaces <icon-repeatone>
      # <icon-consume>
      # <icon-prev>
      # <icon-stop>
      # <icon-play>
      # <icon-pause>
      # <icon-next>
      # <icon-seekb>
      # <icon-seekf>
      format-online = "<label-song> <bar-progress> <label-time>";
      format-online-prefix = "";
      format-online-background = "\${color.background}";
      format-online-padding = 1;

      # format-playing = \${self.format-online}
      # format-paused = \${self.format-online}
      # format-stopped = \${self.format-online}

      # Available tags:
      # <label-offline>
      format-offline = "<label-offline>";
      format-offline-prefix = "";
      format-offline-background = "\${color.background}";
      format-offline-padding = 1;

      # Available tokens:
      # %artist%
      # %album-artist%
      # %album%
      # %date%
      # %title%
      # Default: %artist% - %title%
      label-song = " %artist% - %title%";
      label-song-maxlen = 25;
      label-song-ellipsis = "true";

      # Available tokens:
      # %elapsed%
      # %total%
      # Default: %elapsed% / %total%
      label-time = "%elapsed% / %total%";

      # Available tokens:
      # None
      label-offline = " Offline";

      # Only applies if <icon-X> is used
      icon-play = "";
      icon-pause = "";
      icon-stop = "";
      icon-next = "";
      icon-prev = "";
      icon-seekf = "";
      icon-seekb = "";
      icon-random = "";
      icon-repeat = "";
      icon-repeatone = "";
      icon-single = "";
      icon-consume = "";

      # Used to display the state of random/repeat/repeatone/single
      # Only applies if <icon-"random|repeat|repeatone|single" = {> is used
      toggle-on-foreground = "\${color.green}";
      toggle-off-foreground = "\${color.red}";

      # Only applies if <bar-progress> is used
      bar-progress-format = "\${bar.format}";
      bar-progress-width = "\${bar.width}";
      bar-progress-gradient = "false";

      bar-progress-indicator = "\${bar.indicator}";
      bar-progress-indicator-foreground = "\${color.foreground}";

      bar-progress-fill = "\${bar.fill}";
      bar-progress-foreground-0 = "\${color.green}";
      bar-progress-foreground-1 = "\${color.green}";
      bar-progress-foreground-2 = "\${color.yellow}";
      bar-progress-foreground-3 = "\${color.yellow}";
      bar-progress-foreground-4 = "\${color.red}";

      bar-progress-empty = "\${bar.empty}";
      bar-progress-empty-foreground = "\${color.foreground-alt}";

    };
      # ┌──────────────────────────────────────────────────────────────────────────────-----┐
      # │░█▀█░█▀█░█░░░█░█░█▀▄░█▀█░█▀▄░░░░░░░░░█░█░█▀▀░█▀▀░█▀▄░░░█▄█░█▀█░█▀▄░█░█░█░░░█▀▀░█▀▀ │
      # │░█▀▀░█░█░█░░░░█░░█▀▄░█▀█░█▀▄░░░░▀░░░░█░█░▀▀█░█▀▀░█▀▄░░░█░█░█░█░█░█░█░█░█░░░█▀▀░▀▀█ │
      # │░▀░░░▀▀▀░▀▀▀░░▀░░▀▀░░▀░▀░▀░▀░░░░▀░░░░▀▀▀░▀▀▀░▀▀▀░▀░▀░░░▀░▀░▀▀▀░▀▀░░▀▀▀░▀▀▀░▀▀▀░▀▀▀ │
      # │░Created░By░Aditya░Shakya░@adi1090x░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
      # └──────────────────────────────────────────────────────────────────────────────-----┘


      "module/sysmenu" = {
        type = "custom/text";
        content = "";

        content-background = "\${color.background}";
        content-foreground = "\${color.primary}";
        content-padding = 1;

        click-left = "~/.config/polybar/cuts/scripts/powermenu.sh &";

      };

      "module/powermenu" = {
        type = "custom/menu";

      # If true, <label-toggle> will be to the left of the menu items (default).
      # If false, it will be on the right of all the items.
      expand-right = "true";

      # "menu-LEVEL-N" has the same properties as "label-NAME" with
      # the additional "exec" property
      # 
      # Available exec commands:
      # menu-open-LEVEL
      # menu-close
      # Other commands will be executed using "/usr/bin/env sh -c \$COMMAND"
      menu-0-0 = "reboot";
      menu-0-0-exec = "menu-open-1";
      menu-0-1 = "shutdown";
      menu-0-1-exec = "menu-open-2";

      menu-1-0 = "back";
      menu-1-0-exec = "menu-open-0";
      menu-1-1 = "reboot";
      menu-1-1-exec = "systemctl reboot";

      menu-2-0 = "shutdown";
      menu-2-0-exec = "systemctl poweroff";
      menu-2-1 = "back";
      menu-2-1-exec = "menu-open-0";

      # Available tags:
      # <label-toggle> (default) - gets replaced with <label-(open|close)>
      # <menu> (default)
      # Note that if you use <label-toggle> you must also include
      # the definition for <label-open>

      format = "<label-toggle> <menu>";
      format-background = "\${color.background}";
      format-padding = 1;

      label-open = "";
      label-close = " ";

      # Optional item separator
      # Default: none
      label-separator = " | ";

      label-open-foreground = "\${color.primary}";
      label-close-foreground = "\${color.primary}";
      # label-separator-foreground = \${color.background}

    };

    "module/decor-glyph" = {
      type = "custom/text";
      content-background = "\${color.background-alt}";
      content-foreground = "\${color.background}";
    };

    "module/decor1" = {
      "inherit" = "module/decor-glyph";
      content = "%{T3}%{T-}";
    };

    "module/decor2" = {
      "inherit" = "module/decor-glyph";
      content = "%{T3}%{T-}";
    };

    "module/decor3" = {
      "inherit" = "module/decor-glyph";
      content = "%{T3}%{T-}";
    };

    "module/decor4" = {
      "inherit" = "module/decor-glyph";
      content = "%{T3}%{T-}";
    };

    "module/pipe" = {
      type = "custom/text";
      content-foreground = "\${color.foreground-alt}";
      content-background = "\${color.background}";
      content = "%{T3}|%{T-}";
    };
  };
};
}
