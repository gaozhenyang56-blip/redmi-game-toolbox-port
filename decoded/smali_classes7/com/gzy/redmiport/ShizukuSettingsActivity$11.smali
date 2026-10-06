.class Lcom/gzy/redmiport/ShizukuSettingsActivity$11;
.super Ljava/lang/Object;
.source "ShizukuSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gzy/redmiport/ShizukuSettingsActivity;->refreshOnUi()V
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

    .line 54
    iput-object p1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity$11;->this$0:Lcom/gzy/redmiport/ShizukuSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity$11;->this$0:Lcom/gzy/redmiport/ShizukuSettingsActivity;

    invoke-virtual {v0}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity$11;->this$0:Lcom/gzy/redmiport/ShizukuSettingsActivity;

    # invokes: Lcom/gzy/redmiport/ShizukuSettingsActivity;->refresh()V
    invoke-static {v0}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->access$5(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V

    :cond_d
    return-void
.end method
