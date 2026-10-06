.class public Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$EndTimeListener;,
        Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$StartTimeListener;
    }
.end annotation


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

.field private mDNDEndTime:Landroid/widget/TextView;

.field private mDNDEndTimeIco:Landroid/widget/ImageView;

.field private mDNDEndTimeTile:Landroid/widget/TextView;

.field private mDNDModeChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mDNDStartTime:Landroid/widget/TextView;

.field private mDNDStartTimeIco:Landroid/widget/ImageView;

.field private mDNDStartTimeTile:Landroid/widget/TextView;

.field private mDNDType:Landroid/widget/TextView;

.field private mDNDTypeIco:Landroid/widget/ImageView;

.field private mDNDTypeTile:Landroid/widget/TextView;

.field private mDoNotDisturbModeSliding:Lmiuix/slidingwidget/widget/SlidingButton;

.field private mLayoutDND:Landroid/view/View;

.field private mLayoutDNDEndTime:Landroid/view/View;

.field private mLayoutDNDStartTime:Landroid/view/View;

.field private mLayoutDNDType:Landroid/view/View;

.field private mLayoutLuckySoundMode:Landroid/view/View;

.field private mLayoutRemindGroups:Landroid/view/View;

.field private mLayoutRemindMM:Landroid/view/View;

.field private mLayoutRemindQQ:Landroid/view/View;

.field private mLuckySoundMode:Landroid/widget/TextView;

.field private mOnTextViewClickListener:Landroid/view/View$OnClickListener;

.field private mOnlyNotiGroupLuckyMoneyChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnlyNotiGroupLuckyMoneySliding:Lmiuix/slidingwidget/widget/SlidingButton;

.field private mQQLuckyWarningChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mQQLuckyWarningSliding:Lmiuix/slidingwidget/widget/SlidingButton;

.field private mWechatLuckyWarningChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mWechatLuckyWarningSliding:Lmiuix/slidingwidget/widget/SlidingButton;

.field private soundModeArr:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$1;-><init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mWechatLuckyWarningChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$2;-><init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mQQLuckyWarningChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$3;-><init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnlyNotiGroupLuckyMoneyChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$4;-><init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDModeChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$5;-><init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnTextViewClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->setDNDViewEnable(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnlyNotiGroupLuckyMoneySliding:Lmiuix/slidingwidget/widget/SlidingButton;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDoNotDisturbModeSliding:Lmiuix/slidingwidget/widget/SlidingButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDStartTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDEndTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;JLmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->createTimePicker(JLmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDType:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->soundModeArr:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLuckySoundMode:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mWechatLuckyWarningSliding:Lmiuix/slidingwidget/widget/SlidingButton;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mQQLuckyWarningSliding:Lmiuix/slidingwidget/widget/SlidingButton;

    return-object p0
.end method

.method private createTimePicker(JLmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;)V
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p1, 0xb

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 p1, 0xc

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    new-instance p1, Lmiuix/appcompat/app/TimePickerDialog;

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lmiuix/appcompat/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private initView()V
    .locals 6

    const v0, 0x7f0b0aa2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mWechatLuckyWarningSliding:Lmiuix/slidingwidget/widget/SlidingButton;

    const v0, 0x7f0b0aa4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mQQLuckyWarningSliding:Lmiuix/slidingwidget/widget/SlidingButton;

    const v0, 0x7f0b0aa7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnlyNotiGroupLuckyMoneySliding:Lmiuix/slidingwidget/widget/SlidingButton;

    const v0, 0x7f0b0aa3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDoNotDisturbModeSliding:Lmiuix/slidingwidget/widget/SlidingButton;

    const v0, 0x7f0b0670

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutDNDStartTime:Landroid/view/View;

    const v0, 0x7f0b066f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutDNDEndTime:Landroid/view/View;

    const v0, 0x7f0b0671

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutDNDType:Landroid/view/View;

    const v0, 0x7f0b0684

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutLuckySoundMode:Landroid/view/View;

    const v0, 0x7f0b0db7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutRemindMM:Landroid/view/View;

    const v0, 0x7f0b0931

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutRemindQQ:Landroid/view/View;

    const v0, 0x7f0b0683

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutRemindGroups:Landroid/view/View;

    const v0, 0x7f0b0672

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutDND:Landroid/view/View;

    const v0, 0x7f0b0c63

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDStartTime:Landroid/widget/TextView;

    const v0, 0x7f0b0c64

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDStartTimeTile:Landroid/widget/TextView;

    const v0, 0x7f0b05fd

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDStartTimeIco:Landroid/widget/ImageView;

    const v0, 0x7f0b0c61

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDEndTime:Landroid/widget/TextView;

    const v0, 0x7f0b0c62

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDEndTimeTile:Landroid/widget/TextView;

    const v0, 0x7f0b05fc

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDEndTimeIco:Landroid/widget/ImageView;

    const v0, 0x7f0b0c65

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDType:Landroid/widget/TextView;

    const v0, 0x7f0b0c66

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDTypeTile:Landroid/widget/TextView;

    const v0, 0x7f0b05fe

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDTypeIco:Landroid/widget/ImageView;

    const v0, 0x7f0b0d2d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLuckySoundMode:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mWechatLuckyWarningSliding:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mWechatLuckyWarningChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mQQLuckyWarningSliding:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mQQLuckyWarningChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnlyNotiGroupLuckyMoneySliding:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnlyNotiGroupLuckyMoneyChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDoNotDisturbModeSliding:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDModeChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutDNDStartTime:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnTextViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutDNDEndTime:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnTextViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutDNDType:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnTextViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutLuckySoundMode:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnTextViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutRemindMM:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnTextViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutRemindQQ:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnTextViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutRemindGroups:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnTextViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutDND:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnTextViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mWechatLuckyWarningSliding:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getWeChatLuckyWarningEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mQQLuckyWarningSliding:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getQQLuckyWarningEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mOnlyNotiGroupLuckyMoneySliding:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getOnlyNotiGroupLuckuMoneyConfig()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDoNotDisturbModeSliding:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->isDNDModeOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDStartTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getDNDStartTime()J

    move-result-wide v1

    invoke-static {}, Lcom/miui/luckymoney/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v3

    add-long/2addr v1, v3

    const-string v3, "HH:mm"

    invoke-static {v3, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDEndTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getDNDStopTime()J

    move-result-wide v1

    invoke-static {}, Lcom/miui/luckymoney/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v4

    add-long/2addr v1, v4

    invoke-static {v3, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDType:Landroid/widget/TextView;

    sget-object v1, Lcom/miui/luckymoney/config/DoNotDisturbConstants;->DND_TEXT_ID:[I

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getDNDModeLevel()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->soundModeArr:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLuckySoundMode:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckySoundWarningLevel()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isDNDModeOpen()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->setDNDViewEnable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    return-void
.end method

.method private setDNDViewEnable(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDStartTime:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDStartTimeTile:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDStartTimeIco:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDEndTime:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDEndTimeTile:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    move v3, v2

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDEndTimeIco:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    move v3, v2

    :goto_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDType:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    move v3, v2

    :goto_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDTypeTile:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    move v3, v2

    :goto_7
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mDNDTypeIco:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutDNDStartTime:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutDNDEndTime:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mLayoutDNDType:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->initView()V

    return-void
.end method

.method protected onCreateContentView()I
    .locals 1

    const v0, 0x7f0e0042

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    return-void
.end method
