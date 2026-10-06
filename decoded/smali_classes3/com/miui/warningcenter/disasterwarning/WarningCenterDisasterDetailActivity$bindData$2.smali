.class final Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->bindData(Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lak/p<",
        "Llk/i0;",
        "Ltj/d<",
        "-",
        "Loj/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.warningcenter.disasterwarning.WarningCenterDisasterDetailActivity$bindData$2"
    f = "WarningCenterDisasterDetailActivity.kt"
    i = {}
    l = {
        0x90,
        0x9d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $data:Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

.field label:I

.field final synthetic this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;",
            "Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;",
            "Ltj/d<",
            "-",
            "Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->$data:Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

    iput-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ltj/d<",
            "*>;)",
            "Ltj/d<",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->$data:Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;

    invoke-direct {p1, v0, v1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;-><init>(Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Llk/i0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llk/i0;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->$data:Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->getInstruction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v3

    goto :goto_1

    :cond_4
    :goto_0
    move p1, v5

    :goto_1
    if-eqz p1, :cond_6

    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object p1

    new-instance v1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2$guideText$1;

    iget-object v6, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;

    iget-object v7, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->$data:Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

    invoke-direct {v1, v6, v7, v2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2$guideText$1;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;Ltj/d;)V

    iput v5, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->label:I

    invoke-static {p1, v1, p0}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    check-cast p1, Ljava/lang/String;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->$data:Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->getInstruction()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_7

    move v3, v5

    :cond_7
    if-eqz v3, :cond_8

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->access$getBinding(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;)Ljf/a;

    move-result-object p1

    iget-object p1, p1, Ljf/a;->p:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->access$getBinding(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;)Ljf/a;

    move-result-object p1

    iget-object p1, p1, Ljf/a;->i:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->access$getBinding(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;)Ljf/a;

    move-result-object p1

    iget-object p1, p1, Ljf/a;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;

    invoke-static {v1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->access$getBinding(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;)Ljf/a;

    move-result-object v1

    iget-object v1, v1, Ljf/a;->h:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->$data:Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

    iput v4, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->label:I

    invoke-static {p1, v1, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->access$getOfficialSampleIcon(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    :goto_5
    check-cast p1, Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;

    const v0, 0x7f0810f4

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->$data:Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->getSeverity()Lcom/miui/warningcenter/disasterwarning/model/Severity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/Severity;->getAccentColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_a
    move-object v2, p1

    :cond_b
    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->access$getBinding(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;)Ljf/a;

    move-result-object p1

    iget-object p1, p1, Ljf/a;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
