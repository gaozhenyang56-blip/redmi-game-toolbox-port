.class public Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "EarthquakeWarningAlert"


# instance fields
.field private final helper:Lcom/miui/warningcenter/AlertWindowHelper;

.field private mAlertCard:Landroid/view/View;

.field private mAlertCityText:Landroid/widget/TextView;

.field private mAlertFeelText:Landroid/widget/TextView;

.field private mAlertFromText:Landroid/widget/TextView;

.field private mAlertIcon:Landroid/widget/ImageView;

.field private mAlertIntensity:Landroid/widget/TextView;

.field private mAlertLevelText:Landroid/widget/TextView;

.field private mAlertTitle:Landroid/widget/TextView;

.field private mArriveText:Landroid/widget/TextView;

.field private mContentView:Landroid/view/View;

.field private mDistanceText:Landroid/widget/TextView;

.field private mHelpAlarm:Landroid/widget/ImageView;

.field private mHelpCard:Landroid/view/View;

.field private mHelpCityText:Landroid/widget/TextView;

.field private mHelpEarthquakeText:Landroid/widget/TextView;

.field private mHelpFeelText:Landroid/widget/TextView;

.field private mHelpFromText:Landroid/widget/TextView;

.field private mHelpIntensity:Landroid/widget/TextView;

.field private mHelpLevelText:Landroid/widget/TextView;

.field private mHelpSafeText:Landroid/widget/TextView;

.field private mOtherCard:Landroid/view/View;

.field private mPlaySound:Lcom/miui/earthquakewarning/soundplay/PlaySound;

.field private mSecondsText:Lcom/miui/common/customview/ScoreTextView;

.field private mTinyScreen:Z

.field private mViewCallPhone:Landroid/widget/LinearLayout;

.field private mViewShowEmergency:Landroid/widget/LinearLayout;

.field private viewModel:Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/miui/warningcenter/AlertWindowHelper;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/AlertWindowHelper;-><init>(Landroidx/activity/ComponentActivity;)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->helper:Lcom/miui/warningcenter/AlertWindowHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpSafeText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mArriveText:Landroid/widget/TextView;

    return-object p0
.end method

.method private adaptPhoneCallView()V
    .locals 3

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mViewCallPhone:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b0d8b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mViewShowEmergency:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mViewShowEmergency:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mViewShowEmergency:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070cac

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mViewShowEmergency:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    const v0, 0x7f0b0cd1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f120740

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070ce5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_0
    return-void
.end method

.method private callPhone(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/earthquakewarning/model/UserQuakeItem;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->lambda$onCreate$0(Lcom/miui/earthquakewarning/model/UserQuakeItem;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->onCountdown(I)V

    return-void
.end method

.method public static synthetic f0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;Lcom/miui/earthquakewarning/model/UserQuakeItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->lambda$showArriveCard$3(Lcom/miui/earthquakewarning/model/UserQuakeItem;)V

    return-void
.end method

.method public static synthetic g0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;IILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->lambda$initView$1(IILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;Lcom/miui/earthquakewarning/model/UserQuakeItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->onDatasourceChanged(Lcom/miui/earthquakewarning/model/UserQuakeItem;)V

    return-void
.end method

.method private hideOtherCared()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mTinyScreen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mOtherCard:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static synthetic i0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;Lcom/miui/earthquakewarning/model/UserQuakeItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->lambda$onDatasourceChanged$2(Lcom/miui/earthquakewarning/model/UserQuakeItem;)V

    return-void
.end method

.method private initView()V
    .locals 4

    const v0, 0x7f0b0db4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0095

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertCard:Landroid/view/View;

    const v1, 0x7f0b00a1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertTitle:Landroid/widget/TextView;

    const v1, 0x7f0b0a2f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/common/customview/ScoreTextView;

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mSecondsText:Lcom/miui/common/customview/ScoreTextView;

    const v1, 0x7f0b0331

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mDistanceText:Landroid/widget/TextView;

    const v1, 0x7f0b0096

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertCityText:Landroid/widget/TextView;

    const v1, 0x7f0b009c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertLevelText:Landroid/widget/TextView;

    const v1, 0x7f0b0098

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertFeelText:Landroid/widget/TextView;

    const v1, 0x7f0b009b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertIntensity:Landroid/widget/TextView;

    const v1, 0x7f0b0099

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertFromText:Landroid/widget/TextView;

    const v1, 0x7f0b0117

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mArriveText:Landroid/widget/TextView;

    const v1, 0x7f0b04e4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpCard:Landroid/view/View;

    const v1, 0x7f0b04e9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpIntensity:Landroid/widget/TextView;

    const v1, 0x7f0b04e5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpCityText:Landroid/widget/TextView;

    const v1, 0x7f0b04ea

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpLevelText:Landroid/widget/TextView;

    const v1, 0x7f0b04e7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpFeelText:Landroid/widget/TextView;

    const v1, 0x7f0b060a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpAlarm:Landroid/widget/ImageView;

    const v1, 0x7f0b04e8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpFromText:Landroid/widget/TextView;

    const v1, 0x7f0b04e6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpEarthquakeText:Landroid/widget/TextView;

    const v1, 0x7f0b04ec

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpSafeText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/earthquakewarning/soundplay/PlaySound;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/soundplay/PlaySound;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mPlaySound:Lcom/miui/earthquakewarning/soundplay/PlaySound;

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mSecondsText:Lcom/miui/common/customview/ScoreTextView;

    invoke-static {p0}, Lcom/miui/earthquakewarning/utils/TypefaceHelper;->getMitypeNumber2Typeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertLevelText:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/miui/earthquakewarning/utils/TypefaceHelper;->getMitypeNumber1Typeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpLevelText:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/miui/earthquakewarning/utils/TypefaceHelper;->getMitypeNumber1Typeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertIntensity:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/miui/earthquakewarning/utils/TypefaceHelper;->getMitypeNumber1Typeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpIntensity:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/miui/earthquakewarning/utils/TypefaceHelper;->getMitypeNumber1Typeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-boolean v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mTinyScreen:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0b02aa

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mContentView:Landroid/view/View;

    new-instance v3, Lcom/miui/earthquakewarning/ui/d;

    invoke-direct {v3, p0, v0, v1}, Lcom/miui/earthquakewarning/ui/d;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0845

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mOtherCard:Landroid/view/View;

    const v0, 0x7f0b0d81

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mViewCallPhone:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0d90

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mViewShowEmergency:Landroid/widget/LinearLayout;

    const v0, 0x7f0b009a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertIcon:Landroid/widget/ImageView;

    const v0, 0x7f0b04eb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0202

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/miui/earthquakewarning/utils/Utils;->showEqmEntry(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mViewCallPhone:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mViewShowEmergency:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->adaptPhoneCallView()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$initView$1(IILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    invoke-static {p4, v0}, Landroidx/core/view/n3;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p0, v0}, Ldb/e;->c(Landroid/content/Context;I)I

    move-result v0

    iget v1, p4, Landroid/graphics/Insets;->left:I

    add-int/2addr v1, p1

    iget p1, p4, Landroid/graphics/Insets;->right:I

    add-int/2addr p1, p2

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    invoke-virtual {p3, v1, v0, p1, p2}, Landroid/view/View;->setPadding(IIII)V

    sget-object p1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p1
.end method

.method private static synthetic lambda$onCreate$0(Lcom/miui/earthquakewarning/model/UserQuakeItem;)V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Loj/l;

    new-instance v1, Loj/l;

    const-string v2, "ALERT_STYLE"

    const-string v3, "ALERT_WINDOW"

    invoke-direct {v1, v2, v3}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Loj/l;

    invoke-virtual {p0}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getIntensity()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LEVEL_BY_ALGORITHM"

    invoke-direct {v1, v3, v2}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Loj/l;

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getSelectIntensity()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "USER_DEFINED_THRESHOLD"

    invoke-direct {v1, v3, v2}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Loj/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/miui/earthquakewarning/model/QuakeItem;->getUpdateTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v2, "PUSH_MSG_DELAY_SECONDS"

    invoke-direct {v1, v2, p0}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x3

    aput-object v1, v0, p0

    const-string p0, "expose"

    invoke-static {p0, v0}, Lcom/miui/earthquakewarning/analytics/NewTracker;->track(Ljava/lang/String;[Loj/l;)V

    return-void
.end method

.method private synthetic lambda$onDatasourceChanged$2(Lcom/miui/earthquakewarning/model/UserQuakeItem;)V
    .locals 7

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/LocationModel;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/LocationModel;->getLongitude()D

    move-result-wide v4

    new-instance v6, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity$1;

    invoke-direct {v6, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity$1;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;)V

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/miui/earthquakewarning/utils/LocationUtils;->getGeoArea(Landroid/content/Context;DDLcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;)V

    return-void
.end method

.method private synthetic lambda$showArriveCard$3(Lcom/miui/earthquakewarning/model/UserQuakeItem;)V
    .locals 7

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/LocationModel;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/LocationModel;->getLongitude()D

    move-result-wide v4

    new-instance v6, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity$2;

    invoke-direct {v6, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity$2;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;)V

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/miui/earthquakewarning/utils/LocationUtils;->getGeoArea(Landroid/content/Context;DDLcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;)V

    return-void
.end method

.method private onCountdown(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->showWarningCard()V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mSecondsText:Lcom/miui/common/customview/ScoreTextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->updateLastCount(I)V

    goto :goto_0

    :cond_0
    const/16 v0, -0xc

    if-le p1, v0, :cond_1

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->showHelpCard()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->showArriveCard()V

    :goto_0
    return-void
.end method

.method private onDatasourceChanged(Lcom/miui/earthquakewarning/model/UserQuakeItem;)V
    .locals 7

    const-string v0, "EarthquakeWarningAlert"

    const-string v1, "onDatasourceChanged: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mPlaySound:Lcom/miui/earthquakewarning/soundplay/PlaySound;

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/soundplay/PlaySound;->stop()V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mDistanceText:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getDistance()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "%.0f"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f120737

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertCityText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEpiLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/earthquakewarning/model/LocationModel;->getPlace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertLevelText:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/QuakeItem;->getMagnitude()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "%.1f"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpIntensity:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getIntensity()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpCityText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEpiLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/earthquakewarning/model/LocationModel;->getPlace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpLevelText:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/QuakeItem;->getMagnitude()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertIntensity:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getIntensity()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/miui/earthquakewarning/ui/c;

    invoke-direct {v0, p0, p1}, Lcom/miui/earthquakewarning/ui/c;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;Lcom/miui/earthquakewarning/model/UserQuakeItem;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getIntensity()F

    move-result v0

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertFeelText:Landroid/widget/TextView;

    const v2, 0x7f12073c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpFeelText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertCard:Landroid/view/View;

    const v2, 0x7f080530

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpCard:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-direct {p0, v2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->updateContentView(I)V

    const v0, 0x7f08053c

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->updateAlertIcon(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getIntensity()F

    move-result v0

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertFeelText:Landroid/widget/TextView;

    const v2, 0x7f12073a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpFeelText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertCard:Landroid/view/View;

    const v2, 0x7f08052f

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpCard:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-direct {p0, v2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->updateContentView(I)V

    const v0, 0x7f08053a

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertFeelText:Landroid/widget/TextView;

    const v2, 0x7f120739

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpFeelText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertCard:Landroid/view/View;

    const v2, 0x7f08052e

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpCard:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-direct {p0, v2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->updateContentView(I)V

    const v0, 0x7f08053b

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/QuakeItem;->getType()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertTitle:Landroid/widget/TextView;

    const v2, 0x7f120748

    :goto_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/QuakeItem;->getType()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertTitle:Landroid/widget/TextView;

    const v2, 0x7f12074a

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/QuakeItem;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertTitle:Landroid/widget/TextView;

    const v2, 0x7f12074b

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/QuakeItem;->getType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertTitle:Landroid/widget/TextView;

    const v2, 0x7f120749

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {p0, v1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->muteAudioFocus(Z)V

    invoke-static {p0}, Lcom/miui/earthquakewarning/utils/NotificationUtil;->setBrightness(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->viewModel:Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;->getCountdown()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mPlaySound:Lcom/miui/earthquakewarning/soundplay/PlaySound;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getIntensity()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/miui/earthquakewarning/soundplay/PlaySound;->play(IF)V

    invoke-static {p0}, Lcom/miui/earthquakewarning/utils/VibratorUtil;->cancel(Landroid/content/Context;)V

    if-lez v0, :cond_6

    add-int/lit8 v0, v0, 0xd

    new-array v0, v0, [J

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    invoke-static {p0, v0, v6}, Lcom/miui/earthquakewarning/utils/VibratorUtil;->vibrate(Landroid/content/Context;[JZ)V

    :cond_6
    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/QuakeItem;->getSignatureText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/QuakeItem;->getSignatureText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->updateFromText(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private showArriveCard()V
    .locals 9

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertCard:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpCard:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpAlarm:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->showOtherCard()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v3, "HH:mm"

    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->viewModel:Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;->getDatasource()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/model/QuakeItem;->getStartTime()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getCountTruth()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpEarthquakeText:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const v0, 0x7f12074c

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/miui/earthquakewarning/ui/h;

    invoke-direct {v0, p0, v1}, Lcom/miui/earthquakewarning/ui/h;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;Lcom/miui/earthquakewarning/model/UserQuakeItem;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showEmergencyCard()V
    .locals 2

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEmergencyInfoEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120746

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningEmergencyActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private showHelpCard()V
    .locals 2

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertCard:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpCard:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpAlarm:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpEarthquakeText:Landroid/widget/TextView;

    const v1, 0x7f120741

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpSafeText:Landroid/widget/TextView;

    const v1, 0x7f120743

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->showOtherCard()V

    return-void
.end method

.method private showOtherCard()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mTinyScreen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mOtherCard:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "transient_notification"

    const-string v3, "layout"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    :try_start_0
    const-class p1, Landroid/widget/Toast;

    const-string v1, "getWindowParams"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    const-string v1, "EarthquakeWarningAlert"

    const-string v2, "show toast error caused by "

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showWarningCard()V
    .locals 2

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertCard:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpCard:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->hideOtherCared()V

    return-void
.end method

.method private updateAlertIcon(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mTinyScreen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method private updateContentView(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mTinyScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method private updateEWServiceStatus(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "updatePlayingStatus"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "playing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private updateFromText(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const p1, 0x7f1207e4

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mAlertFromText:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const v4, 0x7f120747

    invoke-virtual {p0, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mHelpFromText:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateLastCount(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f100025

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    iget-boolean v3, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mTinyScreen:Z

    if-eqz v3, :cond_0

    const v3, 0x7f130356

    goto :goto_0

    :cond_0
    const v3, 0x7f130355

    :goto_0
    invoke-direct {v2, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mSecondsText:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRatioUiBaseWidthDp()I
    .locals 1

    invoke-static {p0}, Lmiuix/autodensity/i;->a(Lmiuix/autodensity/j;)I

    move-result v0

    return v0
.end method

.method public muteAudioFocus(Z)V
    .locals 3

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :goto_0
    return-void
.end method

.method public bridge synthetic onActivityCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/common/base/b;->a(Lcom/miui/common/base/c;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onActivityDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->b(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityPause()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->c(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityResume()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->d(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityStart()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->e(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityStop()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->f(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "alert_close"

    invoke-static {p1}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackAlertResultActionModuleClick(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    :sswitch_1
    const-string p1, "alert_emergency"

    invoke-static {p1}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackAlertResultActionModuleClick(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->showEmergencyCard()V

    goto :goto_0

    :sswitch_2
    const-string p1, "alert_call"

    invoke-static {p1}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackAlertResultActionModuleClick(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->viewModel:Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;->getContact()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f120745

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->callPhone(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string p1, "alert_safe_place"

    invoke-static {p1}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackAlertResultActionModuleClick(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->getInstance()Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->searchSafePlace(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b0202 -> :sswitch_4
        0x7f0b04eb -> :sswitch_3
        0x7f0b0d81 -> :sswitch_2
        0x7f0b0d90 -> :sswitch_1
        0x7f0b0db4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->helper:Lcom/miui/warningcenter/AlertWindowHelper;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/warningcenter/AlertWindowHelper;->setWindowBackground(Landroid/view/Window;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->helper:Lcom/miui/warningcenter/AlertWindowHelper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/warningcenter/AlertWindowHelper;->delegate(Z)V

    invoke-static {p0}, Lx4/g;->g(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mTinyScreen:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0e013d

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lx4/t;->r()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lx4/t;->t(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0e013c

    goto :goto_0

    :cond_1
    const p1, 0x7f0e013b

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "UserQuakeItem"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/miui/earthquakewarning/model/UserQuakeItem;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_2
    new-instance v1, Landroidx/lifecycle/u0;

    new-instance v2, Lcom/miui/earthquakewarning/ui/AlertActivityViewModel$Factory;

    invoke-direct {v2, p1}, Lcom/miui/earthquakewarning/ui/AlertActivityViewModel$Factory;-><init>(Lcom/miui/earthquakewarning/model/UserQuakeItem;)V

    invoke-direct {v1, p0, v2}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/y0;Landroidx/lifecycle/u0$b;)V

    const-class v2, Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/u0;->a(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object v1

    check-cast v1, Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->viewModel:Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;

    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->helper:Lcom/miui/warningcenter/AlertWindowHelper;

    iget-object v2, v2, Lcom/miui/warningcenter/AlertWindowHelper;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v1, v2}, Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;->startCountdown(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledFuture;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->viewModel:Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;->getCountdown()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/miui/earthquakewarning/ui/e;

    invoke-direct {v2, p0}, Lcom/miui/earthquakewarning/ui/e;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->initView()V

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->viewModel:Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;->getDatasource()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/miui/earthquakewarning/ui/f;

    invoke-direct {v2, p0}, Lcom/miui/earthquakewarning/ui/f;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    invoke-direct {p0, v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->updateEWServiceStatus(Z)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->helper:Lcom/miui/warningcenter/AlertWindowHelper;

    iget-object v0, v0, Lcom/miui/warningcenter/AlertWindowHelper;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/miui/earthquakewarning/ui/g;

    invoke-direct {v1, p1}, Lcom/miui/earthquakewarning/ui/g;-><init>(Lcom/miui/earthquakewarning/model/UserQuakeItem;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "alert_show"

    invoke-static {p1}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackAlertResultActionModuleClick(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->viewModel:Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;->getCountdown()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_3

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->viewModel:Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;->getCountdown()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackWarningTime(I)V

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    invoke-static {p0}, Lcom/miui/earthquakewarning/utils/NotificationUtil;->resetBrightness(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/earthquakewarning/utils/NotificationUtil;->resetGPS(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->updateEWServiceStatus(Z)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mPlaySound:Lcom/miui/earthquakewarning/soundplay/PlaySound;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/soundplay/PlaySound;->stop()V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->mPlaySound:Lcom/miui/earthquakewarning/soundplay/PlaySound;

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/soundplay/PlaySound;->release()V

    :cond_0
    invoke-static {p0}, Lcom/miui/earthquakewarning/utils/VibratorUtil;->cancel(Landroid/content/Context;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "UserQuakeItem"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->viewModel:Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;

    check-cast p1, Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v0, p1}, Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;->updateDatasource(Lcom/miui/earthquakewarning/model/UserQuakeItem;)V

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->updateEWServiceStatus(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;->muteAudioFocus(Z)V

    return-void
.end method
