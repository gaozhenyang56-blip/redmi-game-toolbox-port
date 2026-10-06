.class public abstract Lt8/a;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I

.field protected c:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lt8/a;->a:Ljava/lang/String;

    iput p3, p0, Lt8/a;->b:I

    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;ILn6/c;)Lt8/a;
    .locals 1

    sget-object v0, Lt8/a$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p3, Lcom/miui/gamebooster/windowmanager/newbox/k;

    invoke-direct {p3, p0, p1, p2}, Lcom/miui/gamebooster/windowmanager/newbox/k;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object p3

    :cond_1
    new-instance p3, Lcom/miui/gamebooster/windowmanager/newbox/f;

    invoke-direct {p3, p0, p1, p2}, Lcom/miui/gamebooster/windowmanager/newbox/f;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object p3

    :cond_2
    new-instance p3, Lt8/b;

    invoke-direct {p3, p0, p1, p2}, Lt8/b;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object p3

    :cond_3
    new-instance p3, Lt8/g;

    invoke-direct {p3, p0, p1, p2}, Lt8/g;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object p3
.end method


# virtual methods
.method public abstract getTitle()I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end method

.method public setContainerView(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lt8/a;->c:Landroid/view/ViewGroup;

    return-void
.end method
