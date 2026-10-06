.class final Lcom/miui/gamecenter/ui/GameCenterMainView$g;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamecenter/ui/GameCenterMainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/p<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        "Loj/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/miui/gamecenter/ui/GameCenterMainView$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/gamecenter/ui/GameCenterMainView$g;

    invoke-direct {v0}, Lcom/miui/gamecenter/ui/GameCenterMainView$g;-><init>()V

    sput-object v0, Lcom/miui/gamecenter/ui/GameCenterMainView$g;->a:Lcom/miui/gamecenter/ui/GameCenterMainView$g;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "null cannot be cast to non-null type com.miui.gamecenter.model.RecommendModel.ContentsBean"

    invoke-static {p2, v0}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lb9/e$a;

    invoke-virtual {p2}, Lb9/e$a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lb9/e$a;->c()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Le9/a;->h(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamecenter/ui/GameCenterMainView$g;->a(ILjava/lang/Object;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
