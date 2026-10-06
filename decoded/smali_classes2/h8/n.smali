.class public final synthetic Lh8/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lh8/q;

.field public final synthetic b:Ld8/m$b;


# direct methods
.method public synthetic constructor <init>(Lh8/q;Ld8/m$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh8/n;->a:Lh8/q;

    iput-object p2, p0, Lh8/n;->b:Ld8/m$b;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    iget-object v0, p0, Lh8/n;->a:Lh8/q;

    iget-object v1, p0, Lh8/n;->b:Ld8/m$b;

    invoke-static {v0, v1, p1, p2}, Lh8/q;->t(Lh8/q;Ld8/m$b;Landroid/widget/RadioGroup;I)V

    return-void
.end method
