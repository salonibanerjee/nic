<!DOCTYPE html>  
<html>
<head>
<title>Insert Data</title>

</head>
 
<body>
  <form method="post">
      <table width="600" border="1" cellspacing="5" cellpadding="5">
        <tr>
          <td width="230">Year </td>
          <td width="329"><select type="text" name="date">
              <option value="2018-19">2018-19</option>
              <option value="2019-20">2019-20</option>
              </select>
              <?php echo form_error('date'); ?></td>
        </tr>
        <tr>
          <td>Target for distribution of poultry </td>
          <td><input type="text" name="target"/>
          <?php echo form_error('target'); ?></td>
        </tr>
        <tr>
          <td>No. of poultry actually distributed </td>
          <td><input type="text" name="no"/>
          <?php echo form_error('no'); ?></td>
        </tr>
        <tr>
          <td colspan="2" align="center"><input type="submit" name="save" value="Save Data"/></td>
        </tr>
      </table>
    </form>
  <button onclick="window.location.href = 'http://localhost/nic/fetch';" type="button">Show Data</button>
    
</body>
</html>