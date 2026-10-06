.class public Lcom/miui/applicationlock/widget/q;
.super Lcom/miui/applicationlock/widget/e;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/os/Vibrator;

.field private c:Lc3/g;

.field private d:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private final g:Ljava/lang/StringBuilder;

.field private h:Z

.field private i:Lcom/miui/applicationlock/widget/NumberPasswordEditText;

.field private j:Lmiui/security/SecurityManager;

.field private final k:Lcom/miui/applicationlock/widget/MiuiNumericInputView$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/applicationlock/widget/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/q;->g:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/miui/applicationlock/widget/q$a;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/widget/q$a;-><init>(Lcom/miui/applicationlock/widget/q;)V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/q;->k:Lcom/miui/applicationlock/widget/MiuiNumericInputView$c;

    iput-boolean p2, p0, Lcom/miui/applicationlock/widget/q;->h:Z

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Vibrator;

    iput-object p2, p0, Lcom/miui/applicationlock/widget/q;->b:Landroid/os/Vibrator;

    const-string p2, "security"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/security/SecurityManager;

    iput-object p1, p0, Lcom/miui/applicationlock/widget/q;->j:Lmiui/security/SecurityManager;

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/q;->v()V

    return-void
.end method

.method private A(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/q;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->c:Lc3/g;

    invoke-interface {v0, p1}, Lc3/g;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/q;->r()V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/q;->setPasswordEntryInputEnabled(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->j:Lmiui/security/SecurityManager;

    const-string v1, "numeric"

    invoke-virtual {v0, v1, p1}, Lmiui/security/SecurityManager;->checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/applicationlock/widget/q;->c:Lc3/g;

    invoke-interface {p1}, Lc3/g;->b()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/applicationlock/widget/q;->u()V

    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/widget/q;->setPasswordEntryInputEnabled(Z)V

    return-void
.end method

.method public static synthetic h(Lcom/miui/applicationlock/widget/q;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/applicationlock/widget/q;->x(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/miui/applicationlock/widget/q;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/widget/q;->g:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic j(Lcom/miui/applicationlock/widget/q;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/applicationlock/widget/q;->a:Z

    return p0
.end method

.method static synthetic k(Lcom/miui/applicationlock/widget/q;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/widget/q;->e:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic l(Lcom/miui/applicationlock/widget/q;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/q;->A(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic m(Lcom/miui/applicationlock/widget/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/q;->z()V

    return-void
.end method

.method static synthetic n(Lcom/miui/applicationlock/widget/q;)Lcom/miui/applicationlock/widget/NumberPasswordEditText;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/widget/q;->i:Lcom/miui/applicationlock/widget/NumberPasswordEditText;

    return-object p0
.end method

.method static synthetic o(Lcom/miui/applicationlock/widget/q;)Lc3/g;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/widget/q;->c:Lc3/g;

    return-object p0
.end method

.method static synthetic p(Lcom/miui/applicationlock/widget/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/q;->r()V

    return-void
.end method

.method static synthetic q(Lcom/miui/applicationlock/widget/q;)Lcom/miui/applicationlock/widget/MiuiNumericInputView;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/widget/q;->d:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    return-object p0
.end method

.method private r()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/q;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f080dbf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private t()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->i:Lcom/miui/applicationlock/widget/NumberPasswordEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->i:Lcom/miui/applicationlock/widget/NumberPasswordEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/q;->A(Ljava/lang/String;)V

    return-void
.end method

.method private u()V
    .locals 12

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->c:Lc3/g;

    invoke-interface {v0}, Lc3/g;->a()V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->b:Landroid/os/Vibrator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const v5, -0x42333333    # -0.1f

    const/4 v6, 0x1

    const v7, 0x3dcccccd    # 0.1f

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    new-instance v1, Lcom/miui/applicationlock/widget/q$c;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/widget/q$c;-><init>(Lcom/miui/applicationlock/widget/q;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/q;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->d:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->setEnabled(Z)V

    return-void
.end method

.method private v()V
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-boolean v2, p0, Lcom/miui/applicationlock/widget/q;->h:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e009c

    invoke-static {v1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f0b0865

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/applicationlock/widget/NumberPasswordEditText;

    iput-object v1, p0, Lcom/miui/applicationlock/widget/q;->i:Lcom/miui/applicationlock/widget/NumberPasswordEditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    iget-object v1, p0, Lcom/miui/applicationlock/widget/q;->i:Lcom/miui/applicationlock/widget/NumberPasswordEditText;

    new-instance v2, Lcom/miui/applicationlock/widget/p;

    invoke-direct {v2, p0}, Lcom/miui/applicationlock/widget/p;-><init>(Lcom/miui/applicationlock/widget/q;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/q;->i:Lcom/miui/applicationlock/widget/NumberPasswordEditText;

    new-instance v2, Lcom/miui/applicationlock/widget/q$b;

    invoke-direct {v2, p0}, Lcom/miui/applicationlock/widget/q$b;-><init>(Lcom/miui/applicationlock/widget/q;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x31

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e009b

    invoke-static {v2, v3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v2, 0x7f0b082a

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    iput-object v2, p0, Lcom/miui/applicationlock/widget/q;->d:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    const v2, 0x7f0b0864

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/miui/applicationlock/widget/q;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/applicationlock/widget/q;->d:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    iget-object v3, p0, Lcom/miui/applicationlock/widget/q;->k:Lcom/miui/applicationlock/widget/MiuiNumericInputView$c;

    invoke-virtual {v2, v3}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->setNumericInputListener(Lcom/miui/applicationlock/widget/MiuiNumericInputView$c;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc3/f;->O(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/applicationlock/widget/q;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/miui/applicationlock/widget/q;->d:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071d7c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_1
    iget-object v2, p0, Lcom/miui/applicationlock/widget/q;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    iget-object v2, p0, Lcom/miui/applicationlock/widget/q;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1202a4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v1, p0, Lcom/miui/applicationlock/widget/q;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private synthetic x(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/applicationlock/widget/q;->t()V

    const/4 p1, 0x1

    return p1
.end method

.method private z()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->f:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/q;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f120647

    goto :goto_0

    :cond_1
    const v1, 0x7f120498

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->d:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public c(Z)V
    .locals 1

    iget-boolean p1, p0, Lcom/miui/applicationlock/widget/q;->h:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/applicationlock/widget/q;->d:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public d(Z)Landroid/widget/EditText;
    .locals 0

    iget-object p1, p0, Lcom/miui/applicationlock/widget/q;->i:Lcom/miui/applicationlock/widget/NumberPasswordEditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lcom/miui/applicationlock/widget/q;->i:Lcom/miui/applicationlock/widget/NumberPasswordEditText;

    return-object p1
.end method

.method public e(Z)V
    .locals 1

    iget-boolean p1, p0, Lcom/miui/applicationlock/widget/q;->h:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/applicationlock/widget/q;->i:Lcom/miui/applicationlock/widget/NumberPasswordEditText;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/applicationlock/widget/q;->d:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {p1, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/q;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->i:Lcom/miui/applicationlock/widget/NumberPasswordEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f080dbf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public g()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/q;->y()V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->d:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->l()V

    return-void
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->g:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/q;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f080dbf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-direct {p0}, Lcom/miui/applicationlock/widget/q;->z()V

    return-void
.end method

.method public setAppPage(Z)V
    .locals 0

    return-void
.end method

.method public setApplockUnlockCallback(Lc3/g;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/q;->c:Lc3/g;

    :cond_0
    return-void
.end method

.method public setDeleteTv(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/q;->f:Landroid/widget/TextView;

    return-void
.end method

.method public setDisplayMode(Lcom/miui/applicationlock/widget/LockPatternView$c;)V
    .locals 0

    return-void
.end method

.method public setLightMode(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/miui/applicationlock/widget/q;->a:Z

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/q;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/applicationlock/widget/q;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/applicationlock/widget/q;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f080dbf

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->d:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {v0, p1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->setLightMode(Z)V

    return-void
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->d:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {v0, p1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->setEnabled(Z)V

    return-void
.end method

.method public w()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected y()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q;->d:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/q;->d:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
