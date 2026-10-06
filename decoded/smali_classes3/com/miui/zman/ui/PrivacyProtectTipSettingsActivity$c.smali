.class Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity$c;-><init>(Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/zman/ui/PrivacyProtectTipSettingsActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
