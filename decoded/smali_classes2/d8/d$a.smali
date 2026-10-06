.class public Ld8/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld8/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/view/ViewGroup;

.field public b:Landroid/widget/ImageView;

.field public c:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Z
    .locals 1

    invoke-static {}, Lj8/m;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lj8/o;->g()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj8/o;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lj8/k;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lh8/b;ZZLk8/b;)V
    .locals 5

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lh8/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Ld8/d$a;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Ld8/d$a;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lh8/d;

    invoke-virtual {v0}, Lh8/d;->h()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ld8/d$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lh8/d;->h()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    iget-object v0, p0, Ld8/d$a;->c:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lh8/d;

    invoke-virtual {v0}, Lh8/d;->g()I

    move-result v2

    const/16 v3, 0xe

    const/4 v4, 0x1

    if-ne v2, v3, :cond_4

    invoke-static {}, Lj8/o;->c()Lj8/o;

    move-result-object v2

    invoke-virtual {v2}, Lj8/o;->h()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ld8/d$a;->c:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

    invoke-direct {p0}, Ld8/d$a;->b()Z

    move-result v3

    if-nez v3, :cond_6

    if-nez p2, :cond_6

    if-eqz p3, :cond_6

    invoke-static {}, Lj8/k;->h()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {}, La8/t;->j()Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_3
    iget-object v2, p0, Ld8/d$a;->c:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

    if-nez p2, :cond_6

    if-eqz p3, :cond_6

    invoke-static {}, Lj8/k;->h()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {}, La8/t;->j()Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_4
    invoke-static {}, Lj8/o;->c()Lj8/o;

    move-result-object v2

    invoke-virtual {v2}, Lj8/o;->h()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Ld8/d$a;->c:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

    invoke-direct {p0}, Ld8/d$a;->b()Z

    move-result v3

    if-nez v3, :cond_6

    if-nez p2, :cond_6

    if-eqz p3, :cond_6

    invoke-static {}, La8/t;->j()Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_5
    iget-object v2, p0, Ld8/d$a;->c:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

    if-nez p2, :cond_6

    if-eqz p3, :cond_6

    invoke-static {}, La8/t;->j()Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    move v4, v1

    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object p2, p0, Ld8/d$a;->c:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

    invoke-virtual {p2, p4}, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->setLevelChangeListener(Lk8/b;)V

    invoke-static {}, Lj8/p;->d()Z

    move-result p2

    iget-object p3, p0, Ld8/d$a;->c:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

    if-eqz p2, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lh8/d;->j()I

    move-result v1

    :goto_1
    invoke-virtual {p3, v1}, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->setCurrentLevel(I)V

    iget-object p2, p0, Ld8/d$a;->c:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_8
    return-void

    :cond_9
    :goto_2
    iget-object p1, p0, Ld8/d$a;->a:Landroid/view/ViewGroup;

    if-eqz p1, :cond_a

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method
