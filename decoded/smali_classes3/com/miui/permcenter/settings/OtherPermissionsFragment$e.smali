.class final Lcom/miui/permcenter/settings/OtherPermissionsFragment$e;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/settings/OtherPermissionsFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/l<",
        "Lcc/g;",
        "Loj/t;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOtherPermissionsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OtherPermissionsActivity.kt\ncom/miui/permcenter/settings/OtherPermissionsFragment$onCreatePreferences$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,448:1\n1#2:449\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/settings/OtherPermissionsFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/settings/OtherPermissionsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment$e;->a:Lcom/miui/permcenter/settings/OtherPermissionsFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcc/g;)V
    .locals 1
    .param p1    # Lcc/g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/settings/OtherPermissionsFragment$e;->a:Lcom/miui/permcenter/settings/OtherPermissionsFragment;

    invoke-static {v0, p1}, Lcom/miui/permcenter/settings/OtherPermissionsFragment;->f0(Lcom/miui/permcenter/settings/OtherPermissionsFragment;Lcc/g;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcc/g;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/settings/OtherPermissionsFragment$e;->a(Lcc/g;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
