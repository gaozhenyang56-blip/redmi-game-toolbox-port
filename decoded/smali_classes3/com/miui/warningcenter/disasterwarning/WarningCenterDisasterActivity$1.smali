.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Leg/o;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lue/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
