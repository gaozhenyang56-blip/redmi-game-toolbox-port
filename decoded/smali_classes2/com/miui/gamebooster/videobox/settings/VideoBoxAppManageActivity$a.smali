.class Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$a;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$a;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-static {p2}, Lcom/miui/gamebooster/service/IVideoToolBox$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/IVideoToolBox;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->g0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;Lcom/miui/gamebooster/service/IVideoToolBox;)Lcom/miui/gamebooster/service/IVideoToolBox;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$a;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->g0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;Lcom/miui/gamebooster/service/IVideoToolBox;)Lcom/miui/gamebooster/service/IVideoToolBox;

    return-void
.end method
