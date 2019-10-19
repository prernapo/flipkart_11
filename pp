
package Package;
import java.util.List;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.openqa.selenium.interactions.Actions;
public class Newclass {

 
    public static void main(String[] args) throws InterruptedException {
    	
		System.setProperty("webdriver.chrome.driver","D:\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		driver.manage().window().maximize();
		 Actions builder = new Actions(driver);
		driver.get("https://www.flipkart.com/");
		driver.findElement(By.className("_2zrpKA")).sendKeys(" prernapuri97@gmail.com");
		driver.findElement(By.xpath("//input[@type=\"password\"]")).sendKeys("prernapuri97@AS");
		WebElement loginclick =driver.findElement(By.className("_2zrpKA"));
		loginclick.submit();
		Thread.sleep(2000);
		//driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		WebElement searchBox = driver.findElement(By.name("q"));
		searchBox.sendKeys("Redmi");
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(2000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(2000);
		builder.sendKeys(Keys.ARROW_DOWN).click().build().perform();
		Thread.sleep(2000);
		WebElement search = driver.findElement(By.className("vh79eN"));
		search.click();
		Thread.sleep(2000);
	
							
		//WebElement image = driver.findElement(By.className("_3O0U0u"));
		//image.click();
		
		 WebElement element = driver.findElement(By.className("_1jcwFN"));
		 builder.moveToElement(element).build().perform();
		 Thread.sleep(2000);
		 builder.moveToElement(driver.findElement(By.linkText("Logout"))).click().build().perform();
		 
        }
        

    }		


