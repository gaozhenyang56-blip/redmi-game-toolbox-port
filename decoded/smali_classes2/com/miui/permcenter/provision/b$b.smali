.class public final Lcom/miui/permcenter/provision/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/provision/b;->n(Lcom/miui/permcenter/provision/f;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/provision/b;

.field final synthetic b:Lqc/a;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/provision/b;Lqc/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/provision/b$b;->a:Lcom/miui/permcenter/provision/b;

    iput-object p2, p0, Lcom/miui/permcenter/provision/b$b;->b:Lqc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/miui/permcenter/provision/b$b;->a:Lcom/miui/permcenter/provision/b;

    invoke-virtual {p1}, Lcom/miui/permcenter/provision/b;->l()Lak/l;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/provision/b$b;->b:Lqc/a;

    invoke-interface {p1, v0}, Lak/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
