.class Lcom/gzy/redmiport/ShizukuSettingsActivity$3;
.super Ljava/lang/Object;
.source "ShizukuSettingsActivity.java"

# interfaces
.implements Lrikka/shizuku/Shizuku$OnRequestPermissionResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gzy/redmiport/ShizukuSettingsActivity;
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

    .line 24
    iput-object p1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity$3;->this$0:Lcom/gzy/redmiport/ShizukuSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionResult(II)V
    .registers 3

    .line 25
    iget-object p1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity$3;->this$0:Lcom/gzy/redmiport/ShizukuSettingsActivity;

    # invokes: Lcom/gzy/redmiport/ShizukuSettingsActivity;->refreshOnUi()V
    invoke-static {p1}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->access$0(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V

    return-void
.end method
