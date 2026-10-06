.class Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment$LevelDialogListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LevelDialogListener"
.end annotation


# instance fields
.field private final choiceItems:[Ljava/lang/CharSequence;

.field private final fragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;[Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment$LevelDialogListener;->fragmentRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment$LevelDialogListener;->choiceItems:[Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment$LevelDialogListener;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_4

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40800000    # 4.0f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x40400000    # 3.0f

    goto :goto_0

    :cond_2
    const/high16 v1, 0x40200000    # 2.5f

    :cond_3
    :goto_0
    invoke-static {v1}, Lcom/miui/earthquakewarning/utils/Utils;->setSelectIntensity(F)V

    invoke-static {v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;->access$000(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment$LevelDialogListener;->choiceItems:[Ljava/lang/CharSequence;

    aget-object p2, v1, p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_4
    return-void
.end method
