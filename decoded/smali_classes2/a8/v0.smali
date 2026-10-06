.class public final synthetic La8/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh7/g$b;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La8/v0;->a:Ljava/lang/String;

    iput-boolean p2, p0, La8/v0;->b:Z

    return-void
.end method


# virtual methods
.method public final a(ZZ)V
    .locals 2

    iget-object v0, p0, La8/v0;->a:Ljava/lang/String;

    iget-boolean v1, p0, La8/v0;->b:Z

    invoke-static {v0, v1, p1, p2}, La8/w0;->a(Ljava/lang/String;ZZZ)V

    return-void
.end method
