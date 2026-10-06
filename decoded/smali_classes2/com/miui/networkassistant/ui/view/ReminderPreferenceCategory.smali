.class public Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory$TipsClickCallBack;
    }
.end annotation


# instance fields
.field private mSelectListener:Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory$TipsClickCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0e04b2

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public static synthetic d(Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;->mSelectListener:Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory$TipsClickCallBack;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory$TipsClickCallBack;->showTips()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b0974

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/miui/networkassistant/ui/view/j;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/view/j;-><init>(Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSelectListener(Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory$TipsClickCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;->mSelectListener:Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory$TipsClickCallBack;

    return-void
.end method
