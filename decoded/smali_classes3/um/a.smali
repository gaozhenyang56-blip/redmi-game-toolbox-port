.class public final synthetic Lum/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lum/b;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lum/b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lum/a;->a:Lum/b;

    iput p2, p0, Lum/a;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lum/a;->a:Lum/b;

    iget v1, p0, Lum/a;->b:I

    invoke-static {v0, v1}, Lum/b;->a(Lum/b;I)V

    return-void
.end method
