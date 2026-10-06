.class public Lcom/miui/applicationlock/widget/PasswordUnlockMediator;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/miui/applicationlock/widget/e;

.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->b:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x773be4f3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x2f271470

    if-eq v0, v1, :cond_1

    const v1, 0x6318bfb

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "mixed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_1
    const-string v0, "pattern"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "numeric"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_4

    new-instance p1, Lcom/miui/applicationlock/widget/u;

    iget-object v0, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->c:Z

    invoke-direct {p1, v0, v1}, Lcom/miui/applicationlock/widget/u;-><init>(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/miui/applicationlock/widget/n;

    iget-object v0, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->c:Z

    invoke-direct {p1, v0, v1}, Lcom/miui/applicationlock/widget/n;-><init>(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_5
    new-instance p1, Lcom/miui/applicationlock/widget/q;

    iget-object v0, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->c:Z

    invoke-direct {p1, v0, v1}, Lcom/miui/applicationlock/widget/q;-><init>(Landroid/content/Context;Z)V

    :goto_2
    iput-object p1, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->a:Lcom/miui/applicationlock/widget/e;

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Lef/y;->c3:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->c:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->a:Lcom/miui/applicationlock/widget/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->a:Lcom/miui/applicationlock/widget/e;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public getUnlockView()Lcom/miui/applicationlock/widget/e;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->a:Lcom/miui/applicationlock/widget/e;

    return-object v0
.end method
