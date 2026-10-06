.class Lcom/gzy/redmiport/ShizukuSettingsActivity$9;
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

    .line 43
    iput-object p1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity$9;->this$0:Lcom/gzy/redmiport/ShizukuSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 43
    iget-object p1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity$9;->this$0:Lcom/gzy/redmiport/ShizukuSettingsActivity;

    # invokes: Lcom/gzy/redmiport/ShizukuSettingsActivity;->refresh()V
    invoke-static {p1}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->access$5(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V

    return-void
.end method
