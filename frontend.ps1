# ----- Create the form (the window) -------------------------
$form = New-Object System.Windows.Forms.Form
$form.Text = 'WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING'
$form.Size = New-Object System.Drawing.Size(900,650)
$form.StartPosition = 'CenterScreen'
$form.BackColor = [System.Drawing.Color]::Black

# ----- Add a label for the text -----------------------------
$label = New-Object System.Windows.Forms.Label

#Larger font (feel free to change the size or family)
$label.Font = New-Object System.Drawing.Font('Consolas', 20, [System.Drawing.FontStyle]::Bold)

#Disable AutoSize so we can size/position it ourselves
$label.AutoSize = $false

#Stretch the label across the form and center the text
$label.Dock = [System.Windows.Forms.DockStyle]::Fill          # fills the client area
$label.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter

#Keep the same colour scheme
$label.ForeColor = [System.Drawing.Color]::Red
$label.BackColor = [System.Drawing.Color]::Transparent

$label.Text = @"
#################################################
Hello, it seems you have stumbled upon my message 
finally. Yes, you have been hacked. AI is dangerous
 and you should be more careful with it. If something sounds too good to be true than it probably is...I have stolen lots of sensitive info about your pc by now and I am getting ready to self distruct it for good XD. 
#################################################
Hold on tight :O ~SP~
"@

$form.Controls.Add($label)

# ----- Optional: a close button (styled to match) ----------
$closeBtn = New-Object System.Windows.Forms.Button
$closeBtn.Text = 'Close'
$closeBtn.Width = 80
$closeBtn.Height = 30
# Position the button in the lower‑right corner
$closeBtn.Location = New-Object System.Drawing.Point(
    $form.ClientSize.Width - $closeBtn.Width - 15,
    $form.ClientSize.Height - $closeBtn.Height - 15)

$closeBtn.BackColor = [System.Drawing.Color]::FromArgb(30,30,30)   # dark gray
$closeBtn.ForeColor = [System.Drawing.Color]::Red
$closeBtn.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat

# Close the form when the button is clicked
$closeBtn.Add_Click({ $form.Close() })
$form.Controls.Add($closeBtn)

# ----- Show the window ---------------------------------------
[void]$form.ShowDialog()
