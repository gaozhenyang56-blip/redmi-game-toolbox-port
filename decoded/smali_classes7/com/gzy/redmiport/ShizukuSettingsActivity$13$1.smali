.class Lcom/gzy/redmiport/ShizukuSettingsActivity$13$1;
.super Ljava/lang/Object;
.source "ShizukuSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gzy/redmiport/ShizukuSettingsActivity$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gzy/redmiport/ShizukuSettingsActivity$13;

.field private final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gzy/redmiport/ShizukuSettingsActivity$13;Ljava/lang/String;)V
    .registers 3

    .line 99
    iput-object p1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity$13$1;->this$1:Lcom/gzy/redmiport/ShizukuSettingsActivity$13;

    iput-object p2, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity$13$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity$13$1;->this$1:Lcom/gzy/redmiport/ShizukuSettingsActivity$13;

    # getter for: Lcom/gzy/redmiport/ShizukuSettingsActivity$13;->this$0:Lcom/gzy/redmiport/ShizukuSettingsActivity;
    invoke-static {v0}, Lcom/gzy/redmiport/ShizukuSettingsActivity$13;->access$0(Lcom/gzy/redmiport/ShizukuSettingsActivity$13;)Lcom/gzy/redmiport/ShizukuSettingsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity$13$1;->this$1:Lcom/gzy/redmiport/ShizukuSettingsActivity$13;

    # getter for: Lcom/gzy/redmiport/ShizukuSettingsActivity$13;->this$0:Lcom/gzy/redmiport/ShizukuSettingsActivity;
    invoke-static {v0}, Lcom/gzy/redmiport/ShizukuSettingsActivity$13;->access$0(Lcom/gzy/redmiport/ShizukuSettingsActivity$13;)Lcom/gzy/redmiport/ShizukuSettingsActivity;

    move-result-object v0

    # getter for: Lcom/gzy/redmiport/ShizukuSettingsActivity;->probe:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->access$6(Lcom/gzy/redmiport/ShizukuSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity$13$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity$13$1;->this$1:Lcom/gzy/redmiport/ShizukuSettingsActivity$13;

    # getter for: Lcom/gzy/redmiport/ShizukuSettingsActivity$13;->this$0:Lcom/gzy/redmiport/ShizukuSettingsActivity;
    invoke-static {v0}, Lcom/gzy/redmiport/ShizukuSettingsActivity$13;->access$0(Lcom/gzy/redmiport/ShizukuSettingsActivity$13;)Lcom/gzy/redmiport/ShizukuSettingsActivity;

    move-result-object v0

    # invokes: Lcom/gzy/redmiport/ShizukuSettingsActivity;->refresh()V
    invoke-static {v0}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->access$5(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V

    :cond_24
    return-void
.end method
