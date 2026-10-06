.class Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment$MyListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/earthquakewarning/service/RequestWarningListTask$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyListener"
.end annotation


# instance fields
.field private final mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment$MyListener;->mWeakContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment$MyListener;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;)V

    return-void
.end method


# virtual methods
.method public onPost(Lcom/miui/earthquakewarning/model/WarningResult;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment$MyListener;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/WarningResult;->getCode()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/WarningResult;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/WarningResult;->getData()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;->access$100(Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;Ljava/util/List;)V

    :cond_1
    return-void
.end method
