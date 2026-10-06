.class final Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$binding$2;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Ljf/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$binding$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$binding$2;->invoke()Ljf/a;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljf/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$binding$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Ljf/a;->c(Landroid/view/LayoutInflater;)Ljf/a;

    move-result-object v0

    return-object v0
.end method
