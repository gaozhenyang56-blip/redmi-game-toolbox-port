.class Lcom/miui/common/customview/AutoScrollViewPager$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/customview/AutoScrollViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/common/customview/AutoScrollViewPager;


# direct methods
.method private constructor <init>(Lcom/miui/common/customview/AutoScrollViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/AutoScrollViewPager$b;->a:Lcom/miui/common/customview/AutoScrollViewPager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/common/customview/AutoScrollViewPager;Lcom/miui/common/customview/AutoScrollViewPager$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/customview/AutoScrollViewPager$b;-><init>(Lcom/miui/common/customview/AutoScrollViewPager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/common/customview/AutoScrollViewPager$b;->a:Lcom/miui/common/customview/AutoScrollViewPager;

    invoke-static {p1}, Lcom/miui/common/customview/AutoScrollViewPager;->b(Lcom/miui/common/customview/AutoScrollViewPager;)Lk4/a;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/common/customview/AutoScrollViewPager$b;->a:Lcom/miui/common/customview/AutoScrollViewPager;

    invoke-static {v0}, Lcom/miui/common/customview/AutoScrollViewPager;->a(Lcom/miui/common/customview/AutoScrollViewPager;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lk4/a;->b(D)V

    iget-object p1, p0, Lcom/miui/common/customview/AutoScrollViewPager$b;->a:Lcom/miui/common/customview/AutoScrollViewPager;

    invoke-virtual {p1}, Lcom/miui/common/customview/AutoScrollViewPager;->h()V

    iget-object p1, p0, Lcom/miui/common/customview/AutoScrollViewPager$b;->a:Lcom/miui/common/customview/AutoScrollViewPager;

    invoke-static {p1}, Lcom/miui/common/customview/AutoScrollViewPager;->b(Lcom/miui/common/customview/AutoScrollViewPager;)Lk4/a;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/common/customview/AutoScrollViewPager$b;->a:Lcom/miui/common/customview/AutoScrollViewPager;

    invoke-static {v0}, Lcom/miui/common/customview/AutoScrollViewPager;->c(Lcom/miui/common/customview/AutoScrollViewPager;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lk4/a;->b(D)V

    iget-object p1, p0, Lcom/miui/common/customview/AutoScrollViewPager$b;->a:Lcom/miui/common/customview/AutoScrollViewPager;

    invoke-static {p1}, Lcom/miui/common/customview/AutoScrollViewPager;->d(Lcom/miui/common/customview/AutoScrollViewPager;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/common/customview/AutoScrollViewPager$b;->a:Lcom/miui/common/customview/AutoScrollViewPager;

    invoke-static {v2}, Lcom/miui/common/customview/AutoScrollViewPager;->b(Lcom/miui/common/customview/AutoScrollViewPager;)Lk4/a;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/miui/common/customview/AutoScrollViewPager;->e(Lcom/miui/common/customview/AutoScrollViewPager;J)V

    :goto_0
    return-void
.end method
