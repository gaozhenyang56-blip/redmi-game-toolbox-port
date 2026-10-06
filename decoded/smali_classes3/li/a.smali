.class public final synthetic Lli/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/reflect/Method;

.field public final synthetic b:Lli/b;

.field public final synthetic c:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Method;Lli/b;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lli/a;->a:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lli/a;->b:Lli/b;

    iput-object p3, p0, Lli/a;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lli/a;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lli/a;->b:Lli/b;

    iget-object v2, p0, Lli/a;->c:[Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lli/b;->a(Ljava/lang/reflect/Method;Lli/b;[Ljava/lang/Object;)V

    return-void
.end method
