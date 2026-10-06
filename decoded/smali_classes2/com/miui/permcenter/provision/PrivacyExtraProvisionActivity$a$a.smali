.class final Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic a:Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity$a$a;->a:Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/miui/permcenter/provision/e;Ltj/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/miui/permcenter/provision/e;
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
            "Lcom/miui/permcenter/provision/e;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p2, Lcom/miui/permcenter/provision/e$a;->a:Lcom/miui/permcenter/provision/e$a;

    invoke-static {p1, p2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ProvisionExtra"

    const-string p2, "doesn\'t need to be displayed or finish"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity$a$a;->a:Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    iget-object p1, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity$a$a;->a:Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/miui/permcenter/provision/e;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity$a$a;->a(Lcom/miui/permcenter/provision/e;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
