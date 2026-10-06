.class public final Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/widget/expose/ExposeTarget;


# instance fields
.field private final exposeViewHelper:Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout$exposeViewHelper$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILbk/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILbk/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout$exposeViewHelper$1;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout$exposeViewHelper$1;-><init>(Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout;->exposeViewHelper:Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout$exposeViewHelper$1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILbk/g;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout;->expose$lambda$0(Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout;)V

    return-void
.end method

.method private static final expose$lambda$0(Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout;->exposeViewHelper:Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout$exposeViewHelper$1;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->expose()V

    return-void
.end method


# virtual methods
.method public cancelExpose()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout;->exposeViewHelper:Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout$exposeViewHelper$1;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->cancelExpose()V

    return-void
.end method

.method public expose()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/widget/expose/c;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/widget/expose/c;-><init>(Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout;->exposeViewHelper:Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout$exposeViewHelper$1;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->cancelExpose()V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setExposeActual(Lcom/miui/networkassistant/ui/widget/expose/ExposeAction;)V
    .locals 1
    .param p1    # Lcom/miui/networkassistant/ui/widget/expose/ExposeAction;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout;->exposeViewHelper:Lcom/miui/networkassistant/ui/widget/expose/ExposeTargetRelativeLayout$exposeViewHelper$1;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/widget/expose/ExposeViewHelper;->setExposeActual(Lcom/miui/networkassistant/ui/widget/expose/ExposeAction;)V

    return-void
.end method
