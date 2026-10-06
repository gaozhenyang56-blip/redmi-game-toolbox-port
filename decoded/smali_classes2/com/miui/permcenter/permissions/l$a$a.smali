.class final Lcom/miui/permcenter/permissions/l$a$a;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/permissions/l$a;-><init>(Lcom/miui/permcenter/permissions/l;)V
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


# instance fields
.field final synthetic a:Lcom/miui/permcenter/permissions/l$a;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/l$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/l$a$a;->a:Lcom/miui/permcenter/permissions/l$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcc/g;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/permcenter/permissions/l$a$a;->a:Lcom/miui/permcenter/permissions/l$a;

    invoke-static {p1}, Lcom/miui/permcenter/permissions/l$a;->q(Lcom/miui/permcenter/permissions/l$a;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcc/g;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/permissions/l$a$a;->a(Lcc/g;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
