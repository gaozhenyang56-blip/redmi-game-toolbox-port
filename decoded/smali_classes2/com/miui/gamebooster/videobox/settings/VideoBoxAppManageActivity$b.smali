.class Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->J0()V
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

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$b;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$b;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->h0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Li8/c;->D0(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$b;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->o0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Li8/c;->C0(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$b;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->f0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Lcom/miui/gamebooster/service/IVideoToolBox;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$b;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->f0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Lcom/miui/gamebooster/service/IVideoToolBox;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$b;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-static {v1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->h0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/gamebooster/service/IVideoToolBox;->I5(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
