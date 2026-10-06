.class public final Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTrafficPurchaseDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrafficPurchaseDialog.kt\ncom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,195:1\n1#2:196\n*E\n"
    }
.end annotation


# instance fields
.field private cardOnClickListener:Lcom/miui/networkassistant/viewholder/CardOnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private inflate:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isSelected:Z

.field private mCommons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mDataSize:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mDesc:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mFee:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mFeeText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mNeedShow:Z

.field private mPhoneNumber:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mPolicy:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mPosition:I

.field private mProductId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mProductTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mProductTitle2:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mValidityPeriod:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mProductId:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mPhoneNumber:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mTitle:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mDesc:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mProductTitle:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mProductTitle2:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mFee:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mFeeText:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mDataSize:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mValidityPeriod:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mPosition:I

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mPolicy:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->isSelected:Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e00b8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const-string v0, "layoutInflater.inflate(R\u2026lse).also { setView(it) }"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->inflate:Landroid/view/View;

    return-void
.end method

.method public static synthetic e(Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->onCreate$lambda$3(Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->onCreate$lambda$2(Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Landroid/widget/CheckBox;Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;Landroid/widget/Button;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->onCreate$lambda$1(Landroid/widget/CheckBox;Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;Landroid/widget/Button;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private static final onCreate$lambda$1(Landroid/widget/CheckBox;Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;Landroid/widget/Button;Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-wide/16 v0, 0x1

    const-string p3, "privacy_confirm"

    invoke-static {p3, v0, v1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    :cond_0
    invoke-virtual {p0, p4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    xor-int/lit8 p0, p4, 0x1

    iput-boolean p0, p1, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mNeedShow:Z

    invoke-virtual {p2, p4}, Landroid/view/View;->setEnabled(Z)V

    iput-boolean p4, p1, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->isSelected:Z

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    const p0, 0x7f080ef1

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f060df4

    goto :goto_0

    :cond_1
    const p0, 0x7f080ef0

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f060e6a

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private static final onCreate$lambda$3(Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;Landroid/view/View;)V
    .locals 9

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mFee:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "product_amount"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "product_size"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "purchase_confirm"

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2, p1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;JLjava/util/Map;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    iget-object v3, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->cardOnClickListener:Lcom/miui/networkassistant/viewholder/CardOnClickListener;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mPhoneNumber:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mProductId:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mDataSize:Ljava/lang/String;

    iget-object v7, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mValidityPeriod:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mFee:Ljava/lang/String;

    invoke-interface/range {v3 .. v8}, Lcom/miui/networkassistant/viewholder/CardOnClickListener;->directPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final formatFeeString(J)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p1, v0

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DecimalFormat(\"0.00\").format(yuan)"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getInflate()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->inflate:Landroid/view/View;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->inflate:Landroid/view/View;

    const v0, 0x7f0b0ca3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->inflate:Landroid/view/View;

    const v0, 0x7f0b0caa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->inflate:Landroid/view/View;

    const v0, 0x7f0b0c59

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->inflate:Landroid/view/View;

    const v0, 0x7f0b0c6e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mProductTitle2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->inflate:Landroid/view/View;

    const v0, 0x7f0b0cbd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mProductTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mNeedShow:Z

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->isSelected:Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->inflate:Landroid/view/View;

    const v0, 0x7f0b0256

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->inflate:Landroid/view/View;

    const v1, 0x7f0b008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->inflate:Landroid/view/View;

    const v2, 0x7f0b08f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->inflate:Landroid/view/View;

    const v3, 0x7f0b0907

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->inflate:Landroid/view/View;

    const v4, 0x7f0b01dd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->isSelected:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v4, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mNeedShow:Z

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x1

    const-string v6, "privacy_show_sum"

    invoke-static {v6, v4, v5}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordNumericEvent(Ljava/lang/String;J)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mPolicy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/l;

    invoke-direct {v0, v1, p0, v3}, Lcom/miui/networkassistant/ui/dialog/l;-><init>(Landroid/widget/CheckBox;Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;Landroid/widget/Button;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f080ef1

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060df4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    invoke-static {p1}, Lcom/miui/networkassistant/utils/FolmeHelper;->onDefaultViewPress(Landroid/view/View;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/m;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/dialog/m;-><init>(Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/n;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/dialog/n;-><init>(Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;)V

    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v3}, Lcom/miui/networkassistant/utils/FolmeHelper;->onCapButtonPress(Landroid/view/View;)V

    return-void
.end method

.method public final setCardOnClickListener(Lcom/miui/networkassistant/viewholder/CardOnClickListener;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;
    .locals 0
    .param p1    # Lcom/miui/networkassistant/viewholder/CardOnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->cardOnClickListener:Lcom/miui/networkassistant/viewholder/CardOnClickListener;

    return-object p0
.end method

.method public final setCommonBuild(Ljava/util/HashMap;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;
    .locals 0
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mCommons:Ljava/util/HashMap;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mCommons:Ljava/util/HashMap;

    return-object p0
.end method

.method public final setDataSize(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mDataSize:Ljava/lang/String;

    return-object p0
.end method

.method public final setDesc(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mDesc:Ljava/lang/String;

    return-object p0
.end method

.method public final setFee(Ljava/lang/Long;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;
    .locals 2
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->formatFeeString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mFee:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public final setFee(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mFee:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public final setFeeText(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mFeeText:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public final setInflate(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->inflate:Landroid/view/View;

    return-void
.end method

.method public final setPhoneNumber(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public final setPolicyDisplay(Z)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mNeedShow:Z

    return-object p0
.end method

.method public final setPolicyText(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "policy"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mPolicy:Ljava/lang/String;

    return-object p0
.end method

.method public final setPosition(I)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mPosition:I

    return-object p0
.end method

.method public final setProductId(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mProductId:Ljava/lang/String;

    return-object p0
.end method

.method public final setProductTitle(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mProductTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final setProductTitle2(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mProductTitle2:Ljava/lang/String;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final setValidityPeriod(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->mValidityPeriod:Ljava/lang/String;

    return-object p0
.end method
