.class Lk7/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk7/f;->p(Lk7/f$b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lk7/f$b;

.field final synthetic c:Lk7/f;


# direct methods
.method constructor <init>(Lk7/f;Ljava/util/List;Lk7/f$b;)V
    .locals 0

    iput-object p1, p0, Lk7/f$a;->c:Lk7/f;

    iput-object p2, p0, Lk7/f$a;->a:Ljava/util/List;

    iput-object p3, p0, Lk7/f$a;->b:Lk7/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lk7/f$a;->c:Lk7/f;

    invoke-static {p1}, Lcom/miui/earthquakewarning/utils/MD5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lk7/f;->f(Lk7/f;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lk7/f$a;->c:Lk7/f;

    invoke-static {p1, p2}, Lk7/f;->g(Lk7/f;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lk7/f$a;->c:Lk7/f;

    iget-object p2, p0, Lk7/f$a;->a:Ljava/util/List;

    iget-object v0, p0, Lk7/f$a;->b:Lk7/f$b;

    invoke-static {p1, p2, v0}, Lk7/f;->h(Lk7/f;Ljava/util/List;Lk7/f$b;)V

    return-void
.end method
