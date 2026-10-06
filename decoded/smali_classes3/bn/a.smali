.class public final Lbn/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lym/s;


# instance fields
.field public final a:Lym/u;


# direct methods
.method public constructor <init>(Lym/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbn/a;->a:Lym/u;

    return-void
.end method


# virtual methods
.method public a(Lym/s$a;)Lym/z;
    .locals 5

    move-object v0, p1

    check-cast v0, Lcn/g;

    invoke-virtual {v0}, Lcn/g;->b()Lym/x;

    move-result-object v1

    invoke-virtual {v0}, Lcn/g;->k()Lbn/g;

    move-result-object v2

    invoke-virtual {v1}, Lym/x;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lbn/a;->a:Lym/u;

    invoke-virtual {v2, v4, p1, v3}, Lbn/g;->i(Lym/u;Lym/s$a;Z)Lcn/c;

    move-result-object p1

    invoke-virtual {v2}, Lbn/g;->d()Lbn/c;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcn/g;->j(Lym/x;Lbn/g;Lcn/c;Lbn/c;)Lym/z;

    move-result-object p1

    return-object p1
.end method
