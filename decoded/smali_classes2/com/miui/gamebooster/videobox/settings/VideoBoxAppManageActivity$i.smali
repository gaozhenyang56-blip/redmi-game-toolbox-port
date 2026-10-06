.class Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$i;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/r;

    iget-object p2, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$i;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-static {p2, p1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->n0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;Lh8/r;)V

    return-void
.end method
