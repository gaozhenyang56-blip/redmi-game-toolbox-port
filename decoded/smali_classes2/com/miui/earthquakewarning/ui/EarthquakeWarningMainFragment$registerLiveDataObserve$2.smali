.class final Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$registerLiveDataObserve$2;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->registerLiveDataObserve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/l<",
        "Ljava/lang/Boolean;",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$registerLiveDataObserve$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$registerLiveDataObserve$2;->invoke$lambda$1$lambda$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$registerLiveDataObserve$2;->invoke(Ljava/lang/Boolean;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$registerLiveDataObserve$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f1207b4

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1207b3

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1207b2

    new-instance v1, Lcom/miui/earthquakewarning/ui/r0;

    invoke-direct {v1}, Lcom/miui/earthquakewarning/ui/r0;-><init>()V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method
