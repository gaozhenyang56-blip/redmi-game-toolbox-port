.class Lcom/gzy/redmiport/ShizukuSettingsActivity$10;
.super Ljava/lang/Object;
.source "ShizukuSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gzy/redmiport/ShizukuSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gzy/redmiport/ShizukuSettingsActivity;


# direct methods
.method constructor <init>(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity$10;->this$0:Lcom/gzy/redmiport/ShizukuSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 45
    iget-object p1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity$10;->this$0:Lcom/gzy/redmiport/ShizukuSettingsActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity$10;->this$0:Lcom/gzy/redmiport/ShizukuSettingsActivity;

    invoke-virtual {v1}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.gzy.redmidiag.CrashReportActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    # invokes: Lcom/gzy/redmiport/ShizukuSettingsActivity;->launch(Landroid/content/Intent;)V
    invoke-static {p1, v0}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->access$3(Lcom/gzy/redmiport/ShizukuSettingsActivity;Landroid/content/Intent;)V

    .line 46
    return-void
.end method
