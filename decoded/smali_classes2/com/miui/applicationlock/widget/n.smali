.class public Lcom/miui/applicationlock/widget/n;
.super Lcom/miui/applicationlock/widget/e;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Vibrator;

.field private b:Lc3/g;

.field private c:Landroid/widget/EditText;

.field private d:Lcom/miui/applicationlock/widget/MiuiKeyBoardView;

.field private e:Landroid/view/View;

.field private f:Z

.field private g:Z

.field private h:Lmiui/security/SecurityManager;

.field private i:Landroid/content/Context;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/e;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/applicationlock/widget/n;->i:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/miui/applicationlock/widget/n;->f:Z

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Vibrator;

    iput-object p2, p0, Lcom/miui/applicationlock/widget/n;->a:Landroid/os/Vibrator;

    const-string p2, "security"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/security/SecurityManager;

    iput-object p1, p0, Lcom/miui/applicationlock/widget/n;->h:Lmiui/security/SecurityManager;

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/n;->o()V

    return-void
.end method

.method public static synthetic h(Lcom/miui/applicationlock/widget/n;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/widget/n;->s(Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/miui/applicationlock/widget/n;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/applicationlock/widget/n;->t(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic j(Lcom/miui/applicationlock/widget/n;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/applicationlock/widget/n;->j:Z

    return p0
.end method

.method static synthetic k(Lcom/miui/applicationlock/widget/n;)Lc3/g;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/widget/n;->b:Lc3/g;

    return-object p0
.end method

.method private l()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/n;->w(Ljava/lang/String;)V

    return-void
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->b:Lc3/g;

    invoke-interface {v0}, Lc3/g;->a()V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->a:Landroid/os/Vibrator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->d:Lcom/miui/applicationlock/widget/MiuiKeyBoardView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private n()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/widget/n;->g:Z

    const v0, 0x7f0b0a67

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/applicationlock/widget/l;

    invoke-direct {v1, p0, v0}, Lcom/miui/applicationlock/widget/l;-><init>(Lcom/miui/applicationlock/widget/n;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lc3/f;->P()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-boolean v1, p0, Lcom/miui/applicationlock/widget/n;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/applicationlock/widget/n;->i:Landroid/content/Context;

    const v2, 0x7f0e009a

    invoke-static {v1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/n;->n()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/applicationlock/widget/n;->i:Landroid/content/Context;

    const v2, 0x7f0e0099

    invoke-static {v1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f0b07a2

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;

    iput-object v1, p0, Lcom/miui/applicationlock/widget/n;->d:Lcom/miui/applicationlock/widget/MiuiKeyBoardView;

    const v1, 0x7f0b0bfa

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/applicationlock/widget/n;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/n;->d:Lcom/miui/applicationlock/widget/MiuiKeyBoardView;

    new-instance v2, Lcom/miui/applicationlock/widget/n$a;

    invoke-direct {v2, p0}, Lcom/miui/applicationlock/widget/n$a;-><init>(Lcom/miui/applicationlock/widget/n;)V

    invoke-virtual {v1, v2}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->e(Lcom/miui/applicationlock/widget/MiuiKeyBoardView$b;)V

    :goto_0
    const v1, 0x7f0b0789

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    new-array v2, v0, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    iget-boolean v1, p0, Lcom/miui/applicationlock/widget/n;->f:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    new-instance v2, Lcom/miui/applicationlock/widget/n$b;

    invoke-direct {v2, p0}, Lcom/miui/applicationlock/widget/n$b;-><init>(Lcom/miui/applicationlock/widget/n;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private synthetic s(Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 2

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/applicationlock/widget/n;->j:Z

    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/miui/applicationlock/widget/n;->g:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/n;->g:Z

    if-eqz v0, :cond_2

    const v0, 0x7f080f9e

    goto :goto_1

    :cond_2
    const v0, 0x7f080f9f

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/n;->g:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12029e

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12029f

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/miui/applicationlock/widget/n;->g:Z

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/miui/applicationlock/widget/n;->g:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/applicationlock/widget/n;->j:Z

    return-void
.end method

.method private synthetic t(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    if-eqz p3, :cond_1

    const/16 p1, 0x42

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    if-ne p1, p2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "MixedPasswordUnlock"

    const-string p2, "onEditorAction: "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/n;->l()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private w(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/n;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->b:Lc3/g;

    invoke-interface {v0, p1}, Lc3/g;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/n;->setPasswordEntryInputEnabled(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->h:Lmiui/security/SecurityManager;

    const-string v1, "mixed"

    invoke-virtual {v0, v1, p1}, Lmiui/security/SecurityManager;->checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/applicationlock/widget/n;->b:Lc3/g;

    invoke-interface {p1}, Lc3/g;->b()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/applicationlock/widget/n;->m()V

    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/widget/n;->setPasswordEntryInputEnabled(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->d:Lcom/miui/applicationlock/widget/MiuiKeyBoardView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->d:Lcom/miui/applicationlock/widget/MiuiKeyBoardView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/applicationlock/widget/n;->d:Lcom/miui/applicationlock/widget/MiuiKeyBoardView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Z)Landroid/widget/EditText;
    .locals 3

    const-string v0, "MixedPasswordUnlock"

    const-string v1, "requestFocusEdit: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    iget-object v1, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    new-instance v2, Lcom/miui/applicationlock/widget/m;

    invoke-direct {v2, p0}, Lcom/miui/applicationlock/widget/m;-><init>(Lcom/miui/applicationlock/widget/n;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    :goto_0
    iget-object v1, p0, Lcom/miui/applicationlock/widget/n;->d:Lcom/miui/applicationlock/widget/MiuiKeyBoardView;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    return-object p1
.end method

.method public e(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/applicationlock/widget/n;->d:Lcom/miui/applicationlock/widget/MiuiKeyBoardView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public g()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/applicationlock/widget/n;->d:Lcom/miui/applicationlock/widget/MiuiKeyBoardView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/applicationlock/widget/n;->u()V

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v12, v3

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v2, v0, Lcom/miui/applicationlock/widget/n;->d:Lcom/miui/applicationlock/widget/MiuiKeyBoardView;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public p()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/n;->l()V

    return-void
.end method

.method public q(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public r()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_0
    return-void
.end method

.method public setAppPage(Z)V
    .locals 0

    return-void
.end method

.method public setApplockUnlockCallback(Lc3/g;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/n;->b:Lc3/g;

    :cond_0
    return-void
.end method

.method public setDisplayMode(Lcom/miui/applicationlock/widget/LockPatternView$c;)V
    .locals 0

    return-void
.end method

.method public setLightMode(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060e04

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    :cond_0
    return-void
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method protected u()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->d:Lcom/miui/applicationlock/widget/MiuiKeyBoardView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/n;->d:Lcom/miui/applicationlock/widget/MiuiKeyBoardView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public v(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->d:Lcom/miui/applicationlock/widget/MiuiKeyBoardView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/n;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
