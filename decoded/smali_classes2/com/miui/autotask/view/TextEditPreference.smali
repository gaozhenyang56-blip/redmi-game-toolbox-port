.class public Lcom/miui/autotask/view/TextEditPreference;
.super Lcom/miui/autotask/view/AutoTaskPreference;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/autotask/view/AutoTaskPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/miui/autotask/view/TextEditPreference;->b:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/miui/autotask/view/TextEditPreference;->i()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/view/AutoTaskPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/miui/autotask/view/TextEditPreference;->b:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/miui/autotask/view/TextEditPreference;->i()V

    return-void
.end method

.method public static synthetic d(Lcom/miui/autotask/view/TextEditPreference;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/autotask/view/TextEditPreference;->j(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/miui/autotask/view/TextEditPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/view/TextEditPreference;->b:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private h(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    const v0, 0x7f0e00ab

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private synthetic j(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p3, 0x42

    if-ne p2, p3, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/autotask/view/TextEditPreference;->h(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/view/TextEditPreference;->a:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/autotask/view/TextEditPreference;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/view/TextEditPreference;->a:Landroid/widget/EditText;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/autotask/view/TextEditPreference;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/view/TextEditPreference;->a:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/autotask/view/TextEditPreference;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/autotask/view/TextEditPreference;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/autotask/view/TextEditPreference;->a:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/miui/autotask/view/TextEditPreference;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/miui/autotask/view/TextEditPreference;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/miui/autotask/view/TextEditPreference;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    :cond_2
    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/autotask/view/AutoTaskPreference;->onBindViewHolder(Landroidx/preference/h;)V

    const v0, 0x7f0b035c

    invoke-virtual {p1, v0}, Landroidx/preference/h;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/miui/autotask/view/TextEditPreference;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/miui/autotask/view/TextEditPreference;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/autotask/view/TextEditPreference;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/miui/autotask/view/TextEditPreference;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/miui/autotask/view/TextEditPreference;->a:Landroid/widget/EditText;

    new-instance v0, Lb4/a;

    invoke-direct {v0, p0}, Lb4/a;-><init>(Lcom/miui/autotask/view/TextEditPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcom/miui/autotask/view/TextEditPreference;->a:Landroid/widget/EditText;

    new-instance v0, Lcom/miui/autotask/view/TextEditPreference$a;

    invoke-direct {v0, p0}, Lcom/miui/autotask/view/TextEditPreference$a;-><init>(Lcom/miui/autotask/view/TextEditPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/autotask/view/TextEditPreference;->b:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/miui/autotask/view/TextEditPreference;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/autotask/view/TextEditPreference;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method
