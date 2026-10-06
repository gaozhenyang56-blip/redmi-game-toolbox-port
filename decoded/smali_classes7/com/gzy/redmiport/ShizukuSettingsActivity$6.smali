.class Lcom/gzy/redmiport/ShizukuSettingsActivity$6;
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

    .line 37
    iput-object p1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity$6;->this$0:Lcom/gzy/redmiport/ShizukuSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 38
    iget-object p1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity$6;->this$0:Lcom/gzy/redmiport/ShizukuSettingsActivity;

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity$6;->this$0:Lcom/gzy/redmiport/ShizukuSettingsActivity;

    invoke-virtual {v2}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    # invokes: Lcom/gzy/redmiport/ShizukuSettingsActivity;->launch(Landroid/content/Intent;)V
    invoke-static {p1, v0}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->access$3(Lcom/gzy/redmiport/ShizukuSettingsActivity;Landroid/content/Intent;)V

    .line 39
    return-void
.end method
