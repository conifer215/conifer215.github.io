let sidebarStatus = true

function sidebarToggle() {

    if (sidebarStatus == true) {
        document.getElementById("sidebar-main").style.display = "none"
        document.getElementById("sidebar-button").value = "Show sidebar"
        
        sidebarStatus = false
        return
    }
    else {
        document.getElementById("sidebar-main").style.display = "block"
        document.getElementById("sidebar-button").value = "Hide sidebar"
        sidebarStatus = true

        return
    }

}
