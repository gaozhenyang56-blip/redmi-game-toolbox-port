.class final Lcom/miui/gamebooster/aihelper/i$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/aihelper/i$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/gamebooster/aihelper/i;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/aihelper/i;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/i$a$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gamebooster/aihelper/i$a$a;->b:Lcom/miui/gamebooster/aihelper/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/gamebooster/aihelper/i$a$a;->d(Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final d(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "$context"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "market://details?id=com.xiaomi.migameservice"

    invoke-static {p0, p1}, Lcom/miui/gamebooster/common/MarketDownloadV2Activity;->f0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/miui/gamebooster/aihelper/d$b;Ltj/d;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/miui/gamebooster/aihelper/d$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gamebooster/aihelper/d$b;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "received uiState: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AIHelperView"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of p2, p1, Lcom/miui/gamebooster/aihelper/d$b$g;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/miui/gamebooster/aihelper/d$b$g;

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/d$b$g;->a()Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/miui/gamebooster/aihelper/i$a$a;->b:Lcom/miui/gamebooster/aihelper/i;

    invoke-static {p2, p1}, Lcom/miui/gamebooster/aihelper/i;->j(Lcom/miui/gamebooster/aihelper/i;Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;)V

    invoke-static {p2, p1}, Lcom/miui/gamebooster/aihelper/i;->k(Lcom/miui/gamebooster/aihelper/i;Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;)V

    goto/16 :goto_1

    :cond_0
    instance-of p2, p1, Lcom/miui/gamebooster/aihelper/d$b$c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/aihelper/i$a$a;->a:Landroid/content/Context;

    invoke-static {p1, v2}, La8/t0;->a(Landroid/content/Context;Ln6/c;)V

    iget-object p1, p0, Lcom/miui/gamebooster/aihelper/i$a$a;->a:Landroid/content/Context;

    const p2, 0x7f1209a8

    :goto_0
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_1
    instance-of p2, p1, Lcom/miui/gamebooster/aihelper/d$b$e;

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/aihelper/i$a$a;->a:Landroid/content/Context;

    invoke-static {p1, v2}, La8/t0;->a(Landroid/content/Context;Ln6/c;)V

    iget-object p1, p0, Lcom/miui/gamebooster/aihelper/i$a$a;->a:Landroid/content/Context;

    const p2, 0x7f12160f

    goto :goto_0

    :cond_2
    instance-of p2, p1, Lcom/miui/gamebooster/aihelper/d$b$a;

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/miui/gamebooster/aihelper/i$a$a;->a:Landroid/content/Context;

    invoke-static {p1, v2}, La8/t0;->a(Landroid/content/Context;Ln6/c;)V

    new-instance p1, Lcom/miui/common/ui/d$b;

    iget-object p2, p0, Lcom/miui/gamebooster/aihelper/i$a$a;->a:Landroid/content/Context;

    const v0, 0x7f130021

    invoke-direct {p1, p2, v0}, Lcom/miui/common/ui/d$b;-><init>(Landroid/content/Context;I)V

    const p2, 0x7f120956

    invoke-virtual {p1, p2}, Lcom/miui/common/ui/d$b;->j(I)Lcom/miui/common/ui/d$b;

    move-result-object p1

    const p2, 0x7f120955

    invoke-virtual {p1, p2}, Lcom/miui/common/ui/d$b;->e(I)Lcom/miui/common/ui/d$b;

    move-result-object p1

    const p2, 0x7f120954

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/i$a$a;->a:Landroid/content/Context;

    new-instance v1, Lcom/miui/gamebooster/aihelper/h;

    invoke-direct {v1, v0}, Lcom/miui/gamebooster/aihelper/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, v1}, Lcom/miui/common/ui/d$b;->i(ILandroid/content/DialogInterface$OnClickListener;)Lcom/miui/common/ui/d$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/common/ui/d$b;->a()Lcom/miui/common/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_3

    const/16 v0, 0x7d3

    invoke-virtual {p2, v0}, Landroid/view/Window;->setType(I)V

    :cond_3
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    goto :goto_1

    :cond_4
    instance-of p2, p1, Lcom/miui/gamebooster/aihelper/d$b$d;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/miui/gamebooster/aihelper/i$a$a;->a:Landroid/content/Context;

    invoke-static {p2, v2}, La8/t0;->a(Landroid/content/Context;Ln6/c;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "migamecenter://game_ai_setting?game_id="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/miui/gamebooster/aihelper/d$b$d;

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/d$b$d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "game center not login, navigate to deeplink "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/gamebooster/aihelper/i$a$a;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const v0, 0x7f12098d

    const/4 v1, 0x1

    invoke-static {p2, p1, v2, v0, v1}, La8/a0;->S(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;IZ)V

    :cond_5
    :goto_1
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/miui/gamebooster/aihelper/d$b;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/aihelper/i$a$a;->b(Lcom/miui/gamebooster/aihelper/d$b;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
