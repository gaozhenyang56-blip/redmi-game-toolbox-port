.class public final synthetic Lk7/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/c$c;


# instance fields
.field public final synthetic a:Lk7/f;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lk7/f$b;


# direct methods
.method public synthetic constructor <init>(Lk7/f;Ljava/lang/String;Lk7/f$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk7/d;->a:Lk7/f;

    iput-object p2, p0, Lk7/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lk7/d;->c:Lk7/f$b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lk7/d;->a:Lk7/f;

    iget-object v1, p0, Lk7/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lk7/d;->c:Lk7/f$b;

    invoke-static {v0, v1, v2, p1, p2}, Lk7/f;->a(Lk7/f;Ljava/lang/String;Lk7/f$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
