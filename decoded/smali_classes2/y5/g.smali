.class public final synthetic Ly5/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb6/a;


# instance fields
.field public final synthetic a:Ly5/i;

.field public final synthetic b:Lc6/c;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ly5/i;Lc6/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly5/g;->a:Ly5/i;

    iput-object p2, p0, Ly5/g;->b:Lc6/c;

    iput p3, p0, Ly5/g;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Ly5/g;->a:Ly5/i;

    iget-object v1, p0, Ly5/g;->b:Lc6/c;

    iget v2, p0, Ly5/g;->c:I

    invoke-static {v0, v1, v2}, Ly5/i;->d(Ly5/i;Lc6/c;I)V

    return-void
.end method
