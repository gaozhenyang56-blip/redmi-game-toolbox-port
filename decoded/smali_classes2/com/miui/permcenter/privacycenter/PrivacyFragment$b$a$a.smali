.class final Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.miui.permcenter.privacycenter.PrivacyFragment$permissionPreferencesInit$1$1$1"
    f = "PrivacyFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/miui/permcenter/privacycenter/PrivacyFragment;

.field final synthetic c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/permission/PermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/permission/PermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/permcenter/privacycenter/PrivacyFragment;Ljava/util/List;Ljava/util/List;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/permcenter/privacycenter/PrivacyFragment;",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/permission/PermissionGroupInfo;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/permission/PermissionGroupInfo;",
            ">;",
            "Ltj/d<",
            "-",
            "Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;->b:Lcom/miui/permcenter/privacycenter/PrivacyFragment;

    iput-object p2, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;->d:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 3
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

    new-instance p1, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;->b:Lcom/miui/permcenter/privacycenter/PrivacyFragment;

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;->d:Ljava/util/List;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;-><init>(Lcom/miui/permcenter/privacycenter/PrivacyFragment;Ljava/util/List;Ljava/util/List;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    iget v0, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;->a:I

    if-nez v0, :cond_0

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;->b:Lcom/miui/permcenter/privacycenter/PrivacyFragment;

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;->d:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->e0(Lcom/miui/permcenter/privacycenter/PrivacyFragment;Ljava/util/List;Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;->b:Lcom/miui/permcenter/privacycenter/PrivacyFragment;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->d0(Lcom/miui/permcenter/privacycenter/PrivacyFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;->b:Lcom/miui/permcenter/privacycenter/PrivacyFragment;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->c0(Lcom/miui/permcenter/privacycenter/PrivacyFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/PrivacyFragment$b$a$a;->b:Lcom/miui/permcenter/privacycenter/PrivacyFragment;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/PrivacyFragment;->b0(Lcom/miui/permcenter/privacycenter/PrivacyFragment;)Lcom/miui/permcenter/settings/model/OneImagePreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
