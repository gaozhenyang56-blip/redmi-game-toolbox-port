.class Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$StartTimeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartTimeListener"
.end annotation


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$StartTimeListener;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onTimeSet(Lmiuix/pickerwidget/widget/TimePicker;II)V
    .locals 2

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$StartTimeListener;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    if-eqz p1, :cond_0

    invoke-static {p2, p3}, Lcom/miui/luckymoney/utils/DateUtil;->getMillisUsingHM(II)J

    move-result-wide p2

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->access$000(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/miui/luckymoney/config/CommonConfig;->setDNDStartTime(J)V

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->access$200(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/miui/luckymoney/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    add-long/2addr p2, v0

    const-string v0, "HH:mm"

    invoke-static {v0, p2, p3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
