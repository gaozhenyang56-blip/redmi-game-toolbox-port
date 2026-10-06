.class final Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter$ImageHolder;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImageHolder"
.end annotation


# instance fields
.field private final binding:Ljf/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;Ljf/c;)V
    .locals 1
    .param p1    # Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljf/c;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter$ImageHolder;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;

    invoke-virtual {p2}, Ljf/c;->b()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter$ImageHolder;->binding:Ljf/c;

    return-void
.end method


# virtual methods
.method public final bind(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter$ImageHolder;->binding:Ljf/c;

    iget-object v0, v0, Ljf/c;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter$ImageHolder;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;->getImages()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final getBinding()Ljf/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter$ImageHolder;->binding:Ljf/c;

    return-object v0
.end method
