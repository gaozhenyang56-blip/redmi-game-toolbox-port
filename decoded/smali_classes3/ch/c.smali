.class public final synthetic Lch/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lch/a$d;


# direct methods
.method public synthetic constructor <init>(Lch/a$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/c;->a:Lch/a$d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lch/c;->a:Lch/a$d;

    invoke-static {v0, p1, p2}, Lch/a$d;->g(Lch/a$d;Landroid/content/DialogInterface;I)V

    return-void
.end method
