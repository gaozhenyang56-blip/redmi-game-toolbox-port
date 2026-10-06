.class public final synthetic Lef/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lef/m;


# direct methods
.method public synthetic constructor <init>(Lef/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lef/l;->a:Lef/m;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lef/l;->a:Lef/m;

    invoke-static {v0, p1, p2}, Lef/m;->h(Lef/m;Landroid/content/DialogInterface;I)V

    return-void
.end method
