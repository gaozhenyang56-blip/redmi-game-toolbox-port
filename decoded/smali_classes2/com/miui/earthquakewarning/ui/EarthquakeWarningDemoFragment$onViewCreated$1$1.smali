.class public final Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$1$1;
.super Landroidx/viewpager2/widget/ViewPager2$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $adapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;

.field final synthetic this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$1$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

    iput-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$1$1;->$adapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$i;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$1$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

    invoke-static {v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->access$getBinding(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;)Ljf/b;

    move-result-object v0

    iget-object v0, v0, Ljf/b;->d:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    invoke-virtual {v0, p1}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->setSelected(I)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$1$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lmiuix/appcompat/app/AppCompatActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$1$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

    invoke-static {v1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->access$getTitles$p(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;)[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setSubtitle(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$1$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->getJob()Llk/s1;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {v0, v2, v1, v2}, Llk/s1$a;->a(Llk/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$1$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

    invoke-static {v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->access$getPlayer$p(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;)Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/soundplay/GuidePlaySound;->stop()V

    :cond_3
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$1$1;->$adapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$ImageAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    const v2, 0x7f12077f

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$1$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

    invoke-static {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->access$getBinding(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;)Ljf/b;

    move-result-object p1

    iget-object p1, p1, Ljf/b;->f:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$1$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

    invoke-static {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->access$getBinding(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;)Ljf/b;

    move-result-object p1

    iget-object p1, p1, Ljf/b;->f:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$1$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

    invoke-static {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->access$getBinding(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;)Ljf/b;

    move-result-object p1

    iget-object p1, p1, Ljf/b;->c:Landroid/widget/Button;

    const v0, 0x7f120302

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$1$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

    invoke-static {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->access$getBinding(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;)Ljf/b;

    move-result-object p1

    iget-object p1, p1, Ljf/b;->f:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$1$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

    invoke-static {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->access$getBinding(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;)Ljf/b;

    move-result-object p1

    iget-object p1, p1, Ljf/b;->f:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment$onViewCreated$1$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;

    invoke-static {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;->access$getBinding(Lcom/miui/earthquakewarning/ui/EarthquakeWarningDemoFragment;)Ljf/b;

    move-result-object p1

    iget-object p1, p1, Ljf/b;->c:Landroid/widget/Button;

    const v0, 0x7f12077d

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
