.class public Lcom/miui/networkassistant/ui/view/MultiSimPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/view/MultiSimPreference$ClickCallBack;
    }
.end annotation


# static fields
.field private static final SIM_ICON:[I


# instance fields
.field private currentNum:I

.field private firstShow:Z

.field private imageViewSim1:Landroid/widget/ImageView;

.field private imageViewSim2:Landroid/widget/ImageView;

.field private final mSimInfoSparse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/miui/networkassistant/config/SimStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

.field private selectListener:Lcom/miui/networkassistant/ui/view/MultiSimPreference$ClickCallBack;

.field private simView1:Landroid/view/View;

.field private simView2:Landroid/view/View;

.field private textViewSim1:Landroid/widget/TextView;

.field private textViewSim2:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->SIM_ICON:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080fa2
        0x7f080fa3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->firstShow:Z

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->mSimInfoSparse:Landroid/util/SparseArray;

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/miui/networkassistant/config/SimUserInfo;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    const p1, 0x7f0e04b1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public static synthetic d(Lcom/miui/networkassistant/ui/view/MultiSimPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->lambda$onBindViewHolder$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/miui/networkassistant/ui/view/MultiSimPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->lambda$reFresh$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/miui/networkassistant/ui/view/MultiSimPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->lambda$onBindViewHolder$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/miui/networkassistant/ui/view/MultiSimPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->lambda$reFresh$1(Landroid/view/View;)V

    return-void
.end method

.method private getPreferenceCardBackground()I
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/DeviceUtil;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080d29

    goto :goto_0

    :cond_0
    const v0, 0x7f080d2a

    :goto_0
    return v0
.end method

.method private getSimDisplayName(I)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isVirtualSim(Landroid/content/Context;I)Z

    move-result p1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->acquirePhoneNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120ddb

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->acquirePhoneNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/PhoneNumberUtils;->localizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120b53

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f121ab9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method private synthetic lambda$onBindViewHolder$2(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->selectListener:Lcom/miui/networkassistant/ui/view/MultiSimPreference$ClickCallBack;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->simView1:Landroid/view/View;

    const v0, 0x7f0804d0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->simView2:Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->getPreferenceCardBackground()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->textViewSim1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->textViewSim2:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->updateTextStyle(Landroid/widget/TextView;Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->selectListener:Lcom/miui/networkassistant/ui/view/MultiSimPreference$ClickCallBack;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/networkassistant/ui/view/MultiSimPreference$ClickCallBack;->selectSimCard(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->selectListener:Lcom/miui/networkassistant/ui/view/MultiSimPreference$ClickCallBack;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->simView2:Landroid/view/View;

    const v0, 0x7f0804d0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->simView1:Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->getPreferenceCardBackground()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->textViewSim2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->textViewSim1:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->updateTextStyle(Landroid/widget/TextView;Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->selectListener:Lcom/miui/networkassistant/ui/view/MultiSimPreference$ClickCallBack;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/miui/networkassistant/ui/view/MultiSimPreference$ClickCallBack;->selectSimCard(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$reFresh$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->selectListener:Lcom/miui/networkassistant/ui/view/MultiSimPreference$ClickCallBack;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->simView1:Landroid/view/View;

    const v0, 0x7f0804d0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->simView2:Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->getPreferenceCardBackground()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->textViewSim1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->textViewSim2:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->updateTextStyle(Landroid/widget/TextView;Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->selectListener:Lcom/miui/networkassistant/ui/view/MultiSimPreference$ClickCallBack;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/networkassistant/ui/view/MultiSimPreference$ClickCallBack;->selectSimCard(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$reFresh$1(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->selectListener:Lcom/miui/networkassistant/ui/view/MultiSimPreference$ClickCallBack;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->simView2:Landroid/view/View;

    const v0, 0x7f0804d0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->simView1:Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->getPreferenceCardBackground()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->textViewSim2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->textViewSim1:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->updateTextStyle(Landroid/widget/TextView;Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->selectListener:Lcom/miui/networkassistant/ui/view/MultiSimPreference$ClickCallBack;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/miui/networkassistant/ui/view/MultiSimPreference$ClickCallBack;->selectSimCard(I)V

    :cond_0
    return-void
.end method

.method private updateTextStyle(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060b21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f130212

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060b22

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f130213

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method


# virtual methods
.method public getSimInfo(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->mSimInfoSparse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/config/SimStatus;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimStatus;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 5

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b07e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->getPreferenceCardBackground()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0b0a84

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->simView1:Landroid/view/View;

    const v0, 0x7f0b0a85

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->simView2:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->simView1:Landroid/view/View;

    const v0, 0x7f0b0a8a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->textViewSim1:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->simView2:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->textViewSim2:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->simView1:Landroid/view/View;

    const v0, 0x7f0b0a87

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->imageViewSim1:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->simView2:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->imageViewSim2:Landroid/widget/ImageView;

    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->firstShow:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->currentNum:I

    const v1, 0x7f0804d0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->simView1:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->textViewSim1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->textViewSim2:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->simView2:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->textViewSim2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->textViewSim1:Landroid/widget/TextView;

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->updateTextStyle(Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->firstShow:Z

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->mSimInfoSparse:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/config/SimStatus;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->mSimInfoSparse:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/config/SimStatus;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->simView1:Landroid/view/View;

    new-instance v4, Lcom/miui/networkassistant/ui/view/h;

    invoke-direct {v4, p0}, Lcom/miui/networkassistant/ui/view/h;-><init>(Lcom/miui/networkassistant/ui/view/MultiSimPreference;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->simView2:Landroid/view/View;

    new-instance v4, Lcom/miui/networkassistant/ui/view/i;

    invoke-direct {v4, p0}, Lcom/miui/networkassistant/ui/view/i;-><init>(Lcom/miui/networkassistant/ui/view/MultiSimPreference;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->imageViewSim1:Landroid/widget/ImageView;

    sget-object v4, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->SIM_ICON:[I

    aget v0, v4, v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->imageViewSim2:Landroid/widget/ImageView;

    aget v2, v4, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->textViewSim1:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimStatus;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->textViewSim2:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimStatus;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public reFresh()V
    .locals 6

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->firstShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->currentNum:I

    const v2, 0x7f0804d0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->simView1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->textViewSim1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->textViewSim2:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->simView2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->textViewSim2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->textViewSim1:Landroid/widget/TextView;

    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->updateTextStyle(Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->firstShow:Z

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->mSimInfoSparse:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/config/SimStatus;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->mSimInfoSparse:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/config/SimStatus;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->simView1:Landroid/view/View;

    new-instance v5, Lcom/miui/networkassistant/ui/view/f;

    invoke-direct {v5, p0}, Lcom/miui/networkassistant/ui/view/f;-><init>(Lcom/miui/networkassistant/ui/view/MultiSimPreference;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->simView2:Landroid/view/View;

    new-instance v5, Lcom/miui/networkassistant/ui/view/g;

    invoke-direct {v5, p0}, Lcom/miui/networkassistant/ui/view/g;-><init>(Lcom/miui/networkassistant/ui/view/MultiSimPreference;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->imageViewSim1:Landroid/widget/ImageView;

    sget-object v5, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->SIM_ICON:[I

    aget v1, v5, v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->imageViewSim2:Landroid/widget/ImageView;

    aget v3, v5, v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->textViewSim1:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimStatus;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->textViewSim2:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimStatus;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setActiveSlot(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->currentNum:I

    return-void
.end method

.method public setDisplayName(I)V
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/config/SimStatus;

    invoke-direct {v0}, Lcom/miui/networkassistant/config/SimStatus;-><init>()V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->getSimDisplayName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimStatus;->setDisplayName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->mSimInfoSparse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setSelectListener(Lcom/miui/networkassistant/ui/view/MultiSimPreference$ClickCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->selectListener:Lcom/miui/networkassistant/ui/view/MultiSimPreference$ClickCallBack;

    return-void
.end method

.method public setSimInfo(Ljava/lang/String;I)V
    .locals 1

    iput p2, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->currentNum:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->mSimInfoSparse:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/networkassistant/config/SimStatus;

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/config/SimStatus;->setDisplayName(Ljava/lang/String;)V

    return-void
.end method
