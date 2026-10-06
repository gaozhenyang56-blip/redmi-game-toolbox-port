.class Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$a;->a:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$a;->a:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->a(Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;)Ld8/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$a;->a:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->a(Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;)Ld8/d;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$a;->a:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;

    invoke-static {v1}, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->b(Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ld8/d;->c(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$a;->a:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->c(Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;)Ld8/l;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$a;->a:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->c(Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;)Ld8/l;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$a;->a:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;

    invoke-static {v1}, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->b(Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ld8/l;->f(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$a;->a:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->c(Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;)Ld8/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
