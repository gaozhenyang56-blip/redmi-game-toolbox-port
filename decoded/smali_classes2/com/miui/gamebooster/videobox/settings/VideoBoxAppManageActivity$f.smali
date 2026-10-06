.class Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$f;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$f;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->i0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$f;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->j0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Lmiuix/view/l$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->startSearchMode(Lmiuix/view/l$b;)V

    :cond_0
    return-void
.end method
