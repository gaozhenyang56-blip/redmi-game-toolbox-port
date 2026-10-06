.class public final Lcom/miui/networkassistant/ui/view/BhCopyListIem;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private final copyBtn$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tvTitle$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tvValue$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/view/BhCopyListIem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/view/BhCopyListIem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/networkassistant/ui/view/BhCopyListIem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/miui/networkassistant/ui/view/BhCopyListIem$tvTitle$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/view/BhCopyListIem$tvTitle$2;-><init>(Lcom/miui/networkassistant/ui/view/BhCopyListIem;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/BhCopyListIem;->tvTitle$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/view/BhCopyListIem$copyBtn$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/view/BhCopyListIem$copyBtn$2;-><init>(Lcom/miui/networkassistant/ui/view/BhCopyListIem;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/BhCopyListIem;->copyBtn$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/view/BhCopyListIem$tvValue$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/view/BhCopyListIem$tvValue$2;-><init>(Lcom/miui/networkassistant/ui/view/BhCopyListIem;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/BhCopyListIem;->tvValue$delegate:Loj/f;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e00b6

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget-object v0, Lef/y;->K:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026efStyleAttr, defStyleRes)"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/BhCopyListIem;->getTvTitle()Landroid/widget/TextView;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/BhCopyListIem;->getCopyBtn()Landroid/widget/ImageView;

    move-result-object p2

    new-instance p3, Lcom/miui/networkassistant/ui/view/c;

    invoke-direct {p3, p0}, Lcom/miui/networkassistant/ui/view/c;-><init>(Lcom/miui/networkassistant/ui/view/BhCopyListIem;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/miui/networkassistant/ui/view/BhCopyListIem;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {p1, v0}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/ClipboardManager;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/BhCopyListIem;->getTvValue()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f1203d8

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/ui/view/BhCopyListIem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/view/BhCopyListIem;->_init_$lambda$0(Lcom/miui/networkassistant/ui/view/BhCopyListIem;Landroid/view/View;)V

    return-void
.end method

.method private final getCopyBtn()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BhCopyListIem;->copyBtn$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-copyBtn>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getTvTitle()Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BhCopyListIem;->tvTitle$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-tvTitle>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTvValue()Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BhCopyListIem;->tvValue$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-tvValue>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final setValue(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/BhCopyListIem;->getTvValue()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
