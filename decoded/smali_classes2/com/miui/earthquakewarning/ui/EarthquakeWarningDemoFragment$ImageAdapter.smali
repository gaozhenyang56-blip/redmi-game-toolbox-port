.class final Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImageAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter$ImageHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter$ImageHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final images:[I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;->images:[I

    return-void

    :array_0
    .array-data 4
        0x7f080544
        0x7f080545
    .end array-data
.end method


# virtual methods
.method public final getImages()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;->images:[I

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;->images:[I

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    check-cast p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter$ImageHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;->onBindViewHolder(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter$ImageHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter$ImageHolder;I)V
    .locals 1
    .param p1    # Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter$ImageHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter$ImageHolder;->bind(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter$ImageHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter$ImageHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Ljf/c;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ljf/c;

    move-result-object p1

    const-string p2, "inflate(\n               \u2026      false\n            )"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter$ImageHolder;

    invoke-direct {p2, p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter$ImageHolder;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;Ljf/c;)V

    return-object p2
.end method
